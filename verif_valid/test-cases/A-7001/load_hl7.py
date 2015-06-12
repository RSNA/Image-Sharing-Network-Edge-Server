'''
Created on Mar 7, 2011

@author: mkelse01
'''
import os
import sys
import re
from datetime import date
from time import localtime
from time import strftime
from time import sleep
import subprocess
from DicomManager import *
from EdgeDbManager import *
from ClearinghouseManager import *

# Global directory paths
tempDir = '.';
mesaDir = '.';
mesaToolDir = '.';
dataDir = '.';
dcm4CheDir = '.';


#~ send hl7 message (template with parameters)
def main():
	global tempDir;
	global mesaDir;
	global mesaToolDir;
	global dataDir;
	global dcm4CheDir;
	
	# Verify environment
	if not 'MESA_TARGET' in os.environ:
		print "Missing MESA_TARGET"
		exit(1)
	if not 'VERIF_VALID_HOME' in os.environ:
		print "Missing VERIF_VALID_HOME"
		exit(1)

	if not 'DCM4CHE_HOME' in os.environ:
		print "Missing DCM4CHE_HOME"
		exit(1)


	tempRoot = '/tmp'
	mesaDir = os.environ['MESA_TARGET'];
	mesaToolDir = mesaDir + '/bin';
	dataDir = os.environ['VERIF_VALID_HOME'] + '/data/A-7001';
	dcm4CheDir = os.environ['DCM4CHE_HOME'];
	
	registryURL = 'http://172.20.175.67:9080/axis2/services/xdsregistryb';
	repositoryURL = 'http://172.20.175.67:9080/axis2/services/xdsrepositoryb';
	repositoryUID = '1.2.3.4.5.6.7.8';
	

	customDemographics = generateDemographics();
	print customDemographics
	customFieldsDictionary = loadParameters(customDemographics[0],customDemographics[1],customDemographics[2],customDemographics[3]);	
	
	
	tempDir = tempRoot + '/' + customFieldsDictionary['ACCESSION_NUMBER'];
	if not os.path.exists(tempDir):
		os.makedirs(tempDir);
	
	# build and send ORM
	constructHl7OrmOrOru(tempDir + '/orm.hl7', dataDir + '/ihe_sched.tpl', dataDir + '/A-7001-01.var', customFieldsDictionary);
	xmitHl7('localhost', '20000', tempDir + '/orm.hl7');
	
	print "ORM HL7 messages sent\n";

	# build and send ORU
	constructHl7OrmOrOru(tempDir + '/oru.hl7', dataDir + '/ihe_oru.tpl', dataDir + '/A-7001-01.var', customFieldsDictionary);
	xmitHl7('localhost', '20000', tempDir + '/oru.hl7');

	print "ORU HL7 messages sent\n";

	# Get EDGE ID for new patient and exam
	edgeDb = EdgeDbManager('rsnadb');
	newPatientEdgeID = edgeDb.getMaxPatientID();
	newExamEdgeID = edgeDb.getMaxExamID();
	
	
	patientName = customFieldsDictionary['PATIENT_NAME'];
	print 'patientName:' + patientName;
	patientID = customFieldsDictionary['PATIENT_ID'];
	print 'patientID:' + patientID;
	accessionNumber = customFieldsDictionary['ACCESSION_NUMBER'];
	print 'accessionNumber:' + accessionNumber;
	
	
	## Prepare temp send data folder
	sentItemsDirName =  tempDir + '/sent'
	
	## Send DICOM files to DCM4CHEE on nibib-3 device
	aeTitle = 'DCM4CHEE';
	dcmHost = '172.20.175.63';
	dcmPort = '11112';
	dcmFileFolder = dataDir + '/dicom_files'

	dcmManager = DicomManager(dcm4CheDir, aeTitle, dcmHost, dcmPort);
	# Verify Dicom connection
	dcmManager.checkDicomRcvr();
	# Send files
	dcmManager.sendDicomFiles(dcmFileFolder, patientName, patientID, accessionNumber);
	print 'DICOM files transmitted\n';
	

	## Instruct EDGE device to retrieve DICOM files
	transactionStatusCode = 1;
	jobId = edgeDb.submitNewJobTransaction(newPatientEdgeID, newExamEdgeID, transactionStatusCode, "");
	print 'JobId: ' + str(jobId) + ' Transaction status set to ' + str(transactionStatusCode) + '\n';
	
	## Wait for transaction status '40'
	for i in range(10):
		sleep(1);
		transactionStatusCode = edgeDb.getLastestTransactionStatus(jobId)
		if (int(transactionStatusCode) < 0 or int(transactionStatusCode) == 40):
			print 'JobId: ' + str(jobId) + ' Transaction Status: ' + str(transactionStatusCode);
			break;
	if transactionStatusCode != 40:
		exit(1);
	
	
	## Query Clearinghouse for transmitted documents
	clearinghouse = ClearinghouseManager(registryURL, repositoryURL, repositoryUID);
	retreivedFilesDirectory = tempDir + '/retrieved';
	clearinghousePatientID = edgeDb.getSingleUsePatientID(jobId);
	
	PATIENT_ID_ASSIGNING_AUTHORITY = '1.3.6.1.4.1.19376.2.840.1.1.1.1';
	PATIENT_ID_ASSIGNING_AUTHORITY_TYPE = 'ISO';
	fullPatientID = clearinghousePatientID + r'^^^&' + PATIENT_ID_ASSIGNING_AUTHORITY + r'&' + PATIENT_ID_ASSIGNING_AUTHORITY_TYPE;
	
	clearinghouse.retreiveFilesByPatientID(clearinghousePatientID, retreivedFilesDirectory)

	## Retrieved files should be in 'retreivedFilesDirectory'
	print 'Retrieved Files to: ' + retreivedFilesDirectory;
	for name in os.listdir(retreivedFilesDirectory):
		print name;


def xmitHl7(host, port, hl7FileName):
	global mesaToolDir;
	sendHl7Command = mesaToolDir + '/send_hl7 ' + host + ' ' + port + ' ' + hl7FileName;
	print sendHl7Command;
	return subprocess.call(sendHl7Command, shell=True);


# construct hl7 file from template file, standard fields file and dictionary
def constructHl7OrmOrOru(hl7FileName, templateFileName, standardFieldsFileName, customFieldsDictionary):
	global tempDir;
	global mesaDir;
	global mesaToolDir;
	allFieldsFileName = tempDir + '/hl7_var.txt';
	allFieldsFile = open(allFieldsFileName, 'w');
	standardFieldsFile = open(standardFieldsFileName, 'r');

	allFieldsFile.write(standardFieldsFile.read() + '\n');
	for key, value in customFieldsDictionary.items():
		allFieldsFile.write(r'$' + key + r'$ = ' + value + '\n')
	allFieldsFile.close();
	
	# allFieldsFile now contains all available template parameters, send off to MESA routine for conversion to txt, then hl7
	tpl2txtCommand = 'perl ' + mesaToolDir + '/tpl_to_txt.pl ' + \
		allFieldsFileName + ' ' + templateFileName + ' ' + hl7FileName + '.txt';
	print tpl2txtCommand;
	subprocess.call(tpl2txtCommand, shell=True);
	txt2hl7Command = mesaToolDir + '/txt_to_hl7 -d ihe -b ' +  \
		mesaDir + '/runtime < ' + hl7FileName + '.txt > ' + hl7FileName;
	print txt2hl7Command;
	subprocess.call(txt2hl7Command, shell=True);


def loadParameters(name, patientID, accessionNumber, dateTime):
	parameters = {};
	parameters['PATIENT_NAME'] = name;
	parameters['PATIENT_ID'] = patientID;
	parameters['ACCESSION_NUMBER'] = accessionNumber;
	parameters['DATE_TIME'] = dateTime;

	parameters['SEX']			= "M";
	parameters['DATE_TIME_BIRTH']		= '19741212';
	parameters['PATIENT_ADDRESS']		= '820 JORIE BLVD';
	parameters['PLACER_ORDER_NUMBER']	= "P." + parameters['PATIENT_ID'];
	parameters['FILLER_ORDER_NUMBER']	= parameters['ACCESSION_NUMBER'];
	parameters['VISIT_NUMBER']		= "V." + parameters['PATIENT_ID'];
	parameters['REQUESTED_PROCEDURE_ID']	= "RP." + parameters['PATIENT_ID'];
	parameters['SCHEDULED_PROCEDURE_STEP_ID'] = "SPS." + parameters['PATIENT_ID'];
	
	parameters['ORDER_EFFECTIVE_DATE'] = dateTime;
	
	return parameters;

def generateDemographics():

	now =   localtime()
	year =  strftime('%Y',now);
	month = strftime('%m',now);
	day =   strftime('%d',now)
	hour =  strftime('%H',now)
	minute =  strftime('%M',now)
	second =  strftime('%S',now)

	patientName = 'LAST^FIRST';
	patientID = year + month + day + '' + hour + minute + second;
	accessionNumber = 'ACCESSION-' + patientID;
	datetime = year + month + day        + hour + minute + second;

	return [patientName, patientID, accessionNumber, datetime]



if __name__ == "__main__": main()
#print 'Running ' + __name__ + ' as main()'
sys.exit(0) # exit indicating normal execution

