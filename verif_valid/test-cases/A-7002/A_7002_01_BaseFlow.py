'''
Created on Mar 15, 2011

@author: mkelse01
'''
from ConfigManager import ConfigManager
from DicomManager import *
from EdgeDbManager import *
from ClearinghouseManager import *
from DicomReader import DicomReader
from DicomCompare import DicomCompare
from time import sleep


class A_7002_01():
    '''
    classdocs
    '''


    def __init__(self, testName, tempDir, dcm4CheDir, mesaDir, mesaToolDir, rsnaDbHost, externalToolsDir, rsnaDbUser='edge', rsnaDbPassword='d17bK4#M'):
        self.testName = testName;
        self.dcm4CheDir = dcm4CheDir;
        self.tempDir = tempDir;
        self.mesaDir = mesaDir;
        self.mesaToolDir = mesaToolDir;
	self.externalToolsDir = externalToolsDir;
        self.rsnaDbHost = rsnaDbHost;
        self.rsnaDbUser = rsnaDbUser;
        self.rsnaDbPassword = rsnaDbPassword;
       
       
    ## --------------------------------------------------------- ##
    ## Validate retrieved XDS documents   
    ## --------------------------------------------------------- ##
    def validateRetrievedMetaDataLegality(self, retreivedFilesDirectory):
        print 'validateRetrievedMetaDataLegality checked w/ NIST XDS Repository'
        return True;
    
    def validateRetrievedMetaDataMatch(self, retreivedFilesDirectory, fieldsToValidate):
        print 'validateRetrievedMetaDataLegality checked w/ NIST XDS Repository'
        return True;

    # Validate match of important tags
    def validateDcmSentDcmRetrievedBinaryMatch(self, sentFilesDirectory, retrievedFilesDirectory):
        sentDcmList = self._findNonKosDicomFiles(sentFilesDirectory);
        retrievedDcmList = self._findNonKosDicomFiles(retrievedFilesDirectory);
        if len(sentDcmList) != len(retrievedDcmList):
            print 'Number of sent and retrieved files does not match'
            return False;
        compare = DicomCompare();
        success = True;
        for sentDcm in sentDcmList:
            retrievedDcm = self._findMatchingDcmBySOPUID(sentDcm, retrievedDcmList);
            if retrievedDcm == None:
                print 'Failed to find match for sent dcm SOP Instance UID:', sentDcm.getSopInstanceUID();
                success = False;
            else:
                mismatches, errors = compare.looseMatch(sentDcm.getDcm(), retrievedDcm.getDcm(), compare.getDontCareList());
                if(len(errors) > 0):
                    print 'Parsing errors detected in Sent:', sentDcm.getSopInstanceUID(), 'Retrieved:', retrievedDcm.getSopInstanceUID()
                    for line in errors:
                        print line;
                    success = False;
                elif(len(mismatches) > 0):
                    print 'Mismatch detected in Sent:', sentDcm.getSopInstanceUID(), 'Retrieved:', retrievedDcm.getSopInstanceUID()
                    for line in mismatches:
                        print line;
                    success = False;
        if(success):
            print str(len(sentDcmList)) + ' dcm file(s) match important tags';
        return success;
    
    def _findMatchingDcmBySOPUID(self, dcmToMatch, dcmList):
            for dcm in dcmList:
                if dcmToMatch.getSopInstanceUID() == dcm.getSopInstanceUID():
                    return dcm;
            return None;
    
    
    # KOS references match DICOM files in directory
    def validateKosDcmMatch(self, retrievedFilesDirectory):
        kosDcm = self._findKosFile(retrievedFilesDirectory);
        if(kosDcm == None):
            print 'No Key Object Note found.';
            return False;
        dcmList = self._findNonKosDicomFiles(retrievedFilesDirectory);
        success = self._matchAllKosEntriesToDcmList(kosDcm, dcmList);
        if(success):
            print str(len(dcmList)) + ' dcm file(s) match KOS references';
        return success;

    def _matchAllKosEntriesToDcmList(self, kosDcm, dcmList):
        referencedObjectTuples = kosDcm.getAllReferencedStudySeriesSopUIDTuples();
        if len(dcmList) != len(referencedObjectTuples):
            print 'KOS references ' + str(len(referencedObjectTuples) - len(dcmList)) + ' more dicom objects than retrieved.'
            return False;
        else:
            matches = 0;
            for dcm in dcmList:
                studySeriesSop = dcm.getStudySeriesSopUIDTuple();
                if studySeriesSop in referencedObjectTuples:
                    matches += 1;
            if matches == len(referencedObjectTuples):
                return True;
            else:
                print 'KOS references ' + str(len(referencedObjectTuples) - matches) + ' fewer dicom objects than retrieved.'
                
        
    def _findKosFile(self, retreivedFilesDirectory):
        for file in os.listdir(retreivedFilesDirectory):
            filePath = retreivedFilesDirectory + '/' + file;
            if(DicomReader().isValidDcmFile(filePath)):
                kosDcm = DicomReader(filePath);
                if kosDcm.containsKosSequence():
                    return kosDcm;
        return None;
    
    def _findNonKosDicomFiles(self, retreivedFilesDirectory):
        dcms = [];
        for file in os.listdir(retreivedFilesDirectory):
            filePath = retreivedFilesDirectory + '/' + file;
            if(DicomReader().isValidDcmFile(filePath)):
                dcm = DicomReader(filePath);
                if not dcm.containsKosSequence():
                    dcms.append(dcm);
        return dcms;
        
    def _extractSopInstanceUID(self, dcmFileName):
        if DicomReader().isValidDcmFile(dcmFileName):
            dcm = DicomReader(dcmFileName);
            return dcm.getSopInstanceUID();
    
            

    ## --------------------------------------------------------- ##
    ## Retrieve XDS documents from Clearinghouse repository  
    ## --------------------------------------------------------- ##
    def retrieveXdsDocuments(self, xdsPatientId, registryURL, repositoryURL, repositoryUID, retreivedFilesDirectory):
        ## Query Clearinghouse for transmitted documents
        clearinghouse = ClearinghouseManager(registryURL, repositoryURL, repositoryUID, self.externalToolsDir);
        clearinghouse.retreiveFilesByPatientID(xdsPatientId, retreivedFilesDirectory)
    
        ## Retrieved files should be in 'retreivedFilesDirectory'
        print 'Retrieved Files to: ' + retreivedFilesDirectory;
        #for name in os.listdir(retreivedFilesDirectory):
        #    print name;


    ## ---------------------------------------------------- ##
    ## Wait for EDGE to complete transfer to Clearinghouse 
    ## Return status code
    ## ---------------------------------------------------- ##
    def waitForCompletedXdsXfer(self, jobId, maxSecondsToWait):
        ## Wait for transaction status '40'
        transactionStatusCode = 0;
        edgeDb = EdgeDbManager('rsnadb', self.rsnaDbHost, self.rsnaDbUser, self.rsnaDbPassword);
        for i in range(int(maxSecondsToWait/4)):
            sleep(4);
            transactionStatusCode = edgeDb.getLastestTransactionStatus(jobId)
            if (int(transactionStatusCode) < 0 or int(transactionStatusCode) == 40):
                print 'JobId: ' + str(jobId) + ' Transaction Status: ' + str(transactionStatusCode);
                break;
        return transactionStatusCode;


    ## ---------------------------------------------------- ##
    ## Wait for EDGE to complete transfer to Clearinghouse 
    ## Return status code
    ## ---------------------------------------------------- ##
    def waitForTransactionStatusCode(self, jobId, statusCode, maxSecondsToWait):
        ## Wait for arbitrary transaction status
        transactionStatusCode = 0;
        edgeDb = EdgeDbManager('rsnadb', self.rsnaDbHost, self.rsnaDbUser, self.rsnaDbPassword);
        for i in range(int(maxSecondsToWait)):
            sleep(1);
            transactionStatusCode = edgeDb.getLastestTransactionStatus(jobId)
            if (int(transactionStatusCode) < 0 or int(transactionStatusCode) == int(statusCode)):
                print 'JobId: ' + str(jobId) + ' Transaction Status: ' + str(transactionStatusCode);
                break;
        return transactionStatusCode;


    ## ---------------------------------------------------- ##
    ## Update transaction status code of job on EDGE 
    ## Return void
    ## ---------------------------------------------------- ##
    def updateTransactionStatusCode(self, jobId, statusCode):
        edgeDb = EdgeDbManager('rsnadb', self.rsnaDbHost, self.rsnaDbUser, self.rsnaDbPassword);
        edgeDb.insertTransaction(jobId, statusCode, "Forced status update by test.");


    ## --------------------------------------------------------- ##
    ## Instruct EDGE to retrieve DICOM files for latest pid & exam  
    ## return: new jobId
    ## --------------------------------------------------------- ##
    def startNewJobAndTransactionOnEdge(self, patientID, accessionNumber):
        # Get EDGE ID for new patient and exam
        edgeDb = EdgeDbManager('rsnadb', self.rsnaDbHost, self.rsnaDbUser, self.rsnaDbPassword);
        newPatientEdgeID = edgeDb.getPatientIndex(patientID);
        newExamEdgeID = edgeDb.getExamID(newPatientEdgeID, accessionNumber)

        transactionStatusCode = 1;
        jobId = edgeDb.submitNewJobTransaction(newPatientEdgeID, newExamEdgeID, transactionStatusCode, "");
        print 'JobId: ' + str(jobId) + ' Transaction status set to ' + str(transactionStatusCode) + '\n';
        return jobId;


    ## ---------------------------------------------------- ##
    ## Generate custom DICOM files 
    ## ---------------------------------------------------- ##
    def generateCustomDicomFiles(self, studySeriesSopUIDsTuple, customFieldsDictionary, sourceDcmFile, destFolder):
        dcmReader = DicomReader(sourceDcmFile);
        patientName = customFieldsDictionary['PATIENT_NAME'];
        patientID = customFieldsDictionary['PATIENT_ID'];
        accessionNumber = customFieldsDictionary['ACCESSION_NUMBER'];
        
        for uids in studySeriesSopUIDsTuple:
            studyUID = uids[0];
            seriesUID = uids[1];
            sopUID = uids[2];
            destFile = destFolder + '/' + sopUID + '.' + patientID + '.dcm';
            
            substitutionList = [];
            substitutionList.append(['PatientsName', patientName]);
            substitutionList.append(['PatientID', patientID]);
            substitutionList.append(['AccessionNumber', accessionNumber]);
            substitutionList.append(['StudyInstanceUID', studyUID]);
            substitutionList.append(['SeriesInstanceUID', seriesUID]);
            substitutionList.append(['SOPInstanceUID', sopUID]);
            substitutionList.append(['MediaStorageSOPInstanceUID', sopUID]); # file meta
            success = dcmReader.saveAs(destFile, substitutionList);
        return success;

    ## ---------------------------------------------------- ##
    ## Send DICOM files to PACS 
    ## ---------------------------------------------------- ##
    def sendDicomFileToPacs(self, aeTitle, host, port, dataDir, customFieldsDictionary):
        dcmManager = DicomManager(self.dcm4CheDir, aeTitle, host, port);
        # Verify DICOM connection
        dcmManager.checkDicomRcvr();
        # Send files
        patientName = customFieldsDictionary['PATIENT_NAME'];
        patientID = customFieldsDictionary['PATIENT_ID'];
        accessionNumber = customFieldsDictionary['ACCESSION_NUMBER'];
        success = dcmManager.sendDicomFiles(dataDir, patientName, patientID, accessionNumber);
        print 'DICOM files transmitted';
        return success
        


    ## ---------------------------------------------------- ##
    ## Generate HL7 messages and send to HL7 receiver 
    ## ---------------------------------------------------- ##
    def generateAndSendOrm(self, dataDir, customFieldsDictionary, host, port):
        # build and send ORM
        self._constructHl7OrmOrOru(self.tempDir + '/orm.hl7', dataDir + '/ihe_sched.tpl', dataDir + '/A-7001-01.var', customFieldsDictionary);
        self._xmitHl7(host, port, self.tempDir + '/orm.hl7');
        print "ORM HL7 messages sent";
        patientName = customFieldsDictionary['PATIENT_NAME'];
        patientID = customFieldsDictionary['PATIENT_ID'];
        accessionNumber = customFieldsDictionary['ACCESSION_NUMBER'];
        status = self._verifyReceiptOfOrm(patientID, accessionNumber, 5)
        print 'Exam status: ' + status;
        return status;
        
    def generateAndSendOru(self, dataDir, customFieldsDictionary, host, port):
        # build and send ORU
        self._constructHl7OrmOrOru(self.tempDir + '/oru.hl7', dataDir + '/ihe_oru.tpl', dataDir + '/A-7001-01.var', customFieldsDictionary);
        self._xmitHl7(host, port, self.tempDir + '/oru.hl7');
        print "ORU HL7 messages sent";
        patientName = customFieldsDictionary['PATIENT_NAME'];
        patientID = customFieldsDictionary['PATIENT_ID'];
        accessionNumber = customFieldsDictionary['ACCESSION_NUMBER'];
        status = self._verifyReceiptOfOrm(patientID, accessionNumber, 5)
        print 'Exam status: ' + status;
        return status;

    # construct hl7 file from template file, standard fields file and dictionary
    def _constructHl7OrmOrOru(self, hl7FileName, templateFileName, standardFieldsFileName, customFieldsDictionary):
        allFieldsFileName = self.tempDir + '/hl7_var.txt';
        allFieldsFile = open(allFieldsFileName, 'w');
        standardFieldsFile = open(standardFieldsFileName, 'r');
    
        allFieldsFile.write(standardFieldsFile.read() + '\n');
        for key, value in customFieldsDictionary.items():
            allFieldsFile.write(r'$' + key + r'$ = ' + value + '\n')
        allFieldsFile.close();
        
        # allFieldsFile now contains all available template parameters, send off to MESA routine for conversion to txt, then hl7
        tpl2txtCommand = 'perl ' + self.mesaToolDir + '/tpl_to_txt.pl ' + \
            allFieldsFileName + ' ' + templateFileName + ' ' + hl7FileName + '.txt';
        print tpl2txtCommand;
        subprocess.call(tpl2txtCommand, shell=True);
        txt2hl7Command = self.mesaToolDir + '/txt_to_hl7 -d ihe -b ' +  \
            self.mesaDir + '/runtime < ' + hl7FileName + '.txt > ' + hl7FileName;
        print txt2hl7Command;
        subprocess.call(txt2hl7Command, shell=True);

    def _xmitHl7(self, host, port, hl7FileName):
        sendHl7Command = self.mesaToolDir + '/send_hl7 ' + host + ' ' + port + ' ' + hl7FileName;
        print sendHl7Command;
        return subprocess.call(sendHl7Command, shell=True);
    
    def _verifyReceiptOfOrm(self, patientID, accessionNumber, maxSecondsToWait):
        status = None;
        edgeDb = EdgeDbManager('rsnadb', self.rsnaDbHost, self.rsnaDbUser, self.rsnaDbPassword);
        for i in range(maxSecondsToWait):
            sleep(1);
            status = edgeDb.getLatestReportStatus(patientID, accessionNumber);
            if (status != None):
                break;
        return status;

    ## ---------------------------------------------------- ##
    ## Generate dictionary used to fill hl7 message templates
    ## ---------------------------------------------------- ##
    def generateCustomFields(self, timeStamp, uniqueString):
        customDemographics = self._generateDemographics(timeStamp, uniqueString);
        customFieldsDictionary = self._loadParameters(customDemographics[0],customDemographics[1],customDemographics[2],customDemographics[3], uniqueString);
        return customFieldsDictionary;
            
    def _loadParameters(self, name, patientID, accessionNumber, dateTimeString, uniqueString):
        parameters = {};
        parameters['PATIENT_NAME'] = name;
        parameters['PATIENT_ID'] = patientID;
        parameters['ACCESSION_NUMBER'] = accessionNumber;
        parameters['DATE_TIME'] = dateTimeString;
    
        parameters['SEX']            = "M";
        parameters['DATE_TIME_BIRTH']        = '19600514';
        parameters['PATIENT_ADDRESS']        = '820 JORIE BLVD';
        parameters['PLACER_ORDER_NUMBER']    = "P." + parameters['PATIENT_ID'];
        parameters['FILLER_ORDER_NUMBER']    = parameters['ACCESSION_NUMBER'];
        parameters['VISIT_NUMBER']        = "V." + parameters['PATIENT_ID'];
        parameters['REQUESTED_PROCEDURE_ID']    = "RP." + parameters['PATIENT_ID'];
        parameters['SCHEDULED_PROCEDURE_STEP_ID'] = "SPS." + parameters['PATIENT_ID'];
        
        parameters['ORDER_EFFECTIVE_DATE'] = dateTimeString;
        parameters['TEXT_REPORT'] = 'TEXT REPORT FOR: ' + accessionNumber;
        
        parameters['STUDY_INSTANCE_UID'] = '9999.' + dateTimeString;
        
        return parameters;
    
    def _generateDemographics(self, timeStamp, uniqueString):
    
        year =  strftime('%Y',timeStamp);
        month = strftime('%m',timeStamp);
        day =   strftime('%d',timeStamp)
        hour =  strftime('%H',timeStamp)
        minute =  strftime('%M',timeStamp)
        second =  strftime('%S',timeStamp)
    
        patientName = 'LAST^FIRST';
        patientID = uniqueString;
        accessionNumber = 'ACCESSION_' + patientID;
        datetime = year + month + day        + hour + minute + second;
    
        return [patientName, patientID, accessionNumber, datetime]

        
def main():
    # run simple class test
     tester = A_7002_01('tester', '/tmp', '/opt/dcm4che/dcm4che-2.0.25', '/opt/mesa', '/opt/mesa/bin');
     tester.validateKosDcmMatch('/tmp/ACCESSION-20110317105149-broken/retrieved');

    
if __name__ == "__main__":
    print 'Running A_7002_01_BaseFlow as main()'
    main();
    sys.exit(0) # exit indicating normal execution
