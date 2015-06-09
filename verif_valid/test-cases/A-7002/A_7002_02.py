'''
Created on Mar 27, 2013

@author: mkelse01
'''
from A_7002_01_BaseFlow import A_7002_01
from EdgeDbManager import EdgeDbManager
from HL7ReceiverManager import HL7ReceiverManager
# from NistRepositoryManager import NistRepositoryManager
from time import localtime
from time import strftime
import sys
import os

#tempRoot = '.';
#mesaDir = '.';
#mesaToolDir = '.';
#dataRoot = '.';
#dcm4CheDir = '.';


class A_7002_02():
    def run(self):
    
        print '''
        A_7002_02:
        '''
        testName = 'A_7002_02';
        numberOfSeriesPerStudy = 1;
        numberOfSOPsPerSeries = 1;  # This is the number of dicom images sent per unique series
        
        
        externalToolsDir = os.getenv('EXTERNALTOOLSDIR');
        tempRoot    = os.getenv('TEMPROOT');
        mesaDir     = os.getenv('MESADIR');
        mesaToolDir = os.getenv('MESATOOLDIR');
        dataRoot    = os.getenv('DATAROOT');
        dcm4CheDir  = os.getenv('DCM4CHEDIR');
        
        ## Testing Hosts ##
        edgeHost = os.getenv('EDGEHOST');
        
        ## PACS Host ##
        pacsAeTitle = os.getenv('PACSAETITLE');
        pacsHost = os.getenv('PACSHOST');
        pacsPort = os.getenv('PACSPORT');
        
        ## MIRTH HL7 Connection
        mirthHl7Host = os.getenv('MIRTHHL7HOST');
        mirthHl7Port = os.getenv('MIRTHHL7PORT');
        
        ## XDS Clearinghouse Connections
        nistScriptDirectory = os.getenv('NISTSCRIPTDIRECTORY');


        registryURL =   os.getenv('REGISTRYURL'); 
        repositoryURL = os.getenv('REPOSITORYURL'); 
        repositoryUID = os.getenv('REPOSITORYUID'); 

        PATIENT_ID_ASSIGNING_AUTHORITY = '1.3.6.1.4.1.19376.2.840.1.1.1.1';
        PATIENT_ID_ASSIGNING_AUTHORITY_TYPE = 'ISO';
        
        testDataDir = dataRoot + '/A-7001/A-7001-01';
        baseTest = A_7002_01(testName, tempRoot, dcm4CheDir, mesaDir, mesaToolDir, edgeHost, externalToolsDir);
    
        ## XDS HL7 Connection
        xdsHl7JarPath = externalToolsDir + '/HL7Receiver/HL7Receiver.jar';
        xdsHl7Port = 9082;
        
        ## --------------------------------------------------------- ##
        print 'Starting XDS HL7 Receiver'
        ## --------------------------------------------------------- ##
        self.xdsHl7 = HL7ReceiverManager(xdsHl7JarPath, xdsHl7Port, False, False);
        if self.xdsHl7.isAnInstanceRunning():
            return (False, 'HL7 Receiver already running.  Kill process before testing.');
        success = self.xdsHl7.startServer();
        if not success:
            return (False, 'Failed to start HL7 Receiver');
    
#        ## --------------------------------------------------------- ##
#        print 'Starting NIST Repository as Clearinghouse'
#        ## --------------------------------------------------------- ##
#        self.nist = NistRepositoryManager(nistScriptDirectory);
#        success = self.nist.startServer();
#        if not success:
#            return (False, 'Failed to start NIST Repository');

        ## --------------------------------------------------------- ##
        print 'Generate unique Study Instance UID'
        ## --------------------------------------------------------- ##
        nowTimeStamp = localtime()
        studyUID = '9999.' + strftime('%Y%m%d%H%M%S', nowTimeStamp);
        
        ## --------------------------------------------------------- ##
        print 'Generate dictionary used to fill hl7 message templates'
        ## --------------------------------------------------------- ##
        customFieldsDictionary = baseTest.generateCustomFields(nowTimeStamp, studyUID);
        patientName = customFieldsDictionary['PATIENT_NAME'];
        print 'patientName:' + patientName;
        patientID = customFieldsDictionary['PATIENT_ID'];
        print 'patientID:' + patientID;
        accessionNumber = customFieldsDictionary['ACCESSION_NUMBER'];
        print 'accessionNumber:' + accessionNumber;
        studyUID = customFieldsDictionary['STUDY_INSTANCE_UID'];
        print 'studyUID:' + studyUID;
    
        # Create test directorys
        testTempDir = tempRoot + '/' + accessionNumber;
        os.makedirs(testTempDir);
        retreivedFilesDirectory = testTempDir + '/retrieved'; 
        os.makedirs(retreivedFilesDirectory);
        sentFilesDirectory = testTempDir + '/sent'; 
        os.makedirs(sentFilesDirectory);
    
        ## --------------------------------------------------------- ##
        print 'Generate ORM HL7 message and send to HL7 receiver - Creates Exam & Patient entries via MIRTH' 
        ## --------------------------------------------------------- ##
        status = baseTest.generateAndSendOrm(testDataDir, customFieldsDictionary, mirthHl7Host, mirthHl7Port);
        if(status != 'SCHEDULED'):
            return (False, 'Failed to schedule exam');
        
        ## --------------------------------------------------------- ##
        print 'Generate ORU HL7 message and send to HL7 receiver' 
        ## --------------------------------------------------------- ##
        status = baseTest.generateAndSendOru(testDataDir, customFieldsDictionary, mirthHl7Host, mirthHl7Port);
        if(status != 'FINALIZED'):
            return (False, 'Failed to finalize exam');
        
        ## --------------------------------------------------------- ##
        print 'Prepare DICOM files to with Study, Series, SOP UIDs' 
        ## --------------------------------------------------------- ##
        studySeriesSopUIDs = [];
        # SeriesUID format - StudyUID.N
        # SopUID format    - StudyUID.Series.N
        #   where N is a reasonably unique int
        n = int(strftime('%H%M%S', localtime()));
        for seriesIndex in range(numberOfSeriesPerStudy):
            seriesN = seriesIndex + n;
            seriesUID = str(studyUID) + '.' + str(seriesN)
            for sopIndex in range(numberOfSOPsPerSeries):
                sopN = sopIndex + n;
                sopUID = str(seriesUID) + '.'+ str(sopN)
                studySeriesSopUIDs.append([studyUID, seriesUID, sopUID]);
        success = baseTest.generateCustomDicomFiles(studySeriesSopUIDs, customFieldsDictionary, testDataDir + '/dicom_files/CT.dcm', sentFilesDirectory)
        if not success:
            return (False, 'Failed to generate custom dicom files');
        
        ## --------------------------------------------------------- ##
        print 'Send DICOM files to PACS' 
        ## --------------------------------------------------------- ##
        baseTest.sendDicomFileToPacs(pacsAeTitle, pacsHost, pacsPort, sentFilesDirectory, customFieldsDictionary);
        
        
        ## --------------------------------------------------------- ##
        print 'Instruct EDGE to retrieve DICOM files for pid & accession - Job, JobSet, Transactions entries in rsnadb';  
        ## --------------------------------------------------------- ##
        jobID = baseTest.startNewJobAndTransactionOnEdge(patientID, accessionNumber);
        

        
        ## --------------------------------------------------------- ##
        print 'Wait for EDGE to complete transfer to Clearinghouse' 
        ## --------------------------------------------------------- ##
        statusCode = baseTest.waitForCompletedXdsXfer(jobID, 240);
        
        if(statusCode != 40):
            # return (False, 'Transaction status code set to: ' +  str(statusCode));
            print '\n\n\nTransaction status code set to: ' +  str(statusCode) + '\n\n\n';
            
        ## --------------------------------------------------------- ##
        print 'Retrieve XDS documents from Clearinghouse repository'  
        ## --------------------------------------------------------- ##
        PATIENT_ID_ASSIGNING_AUTHORITY = '1.3.6.1.4.1.19376.2.840.1.1.1.1';
        PATIENT_ID_ASSIGNING_AUTHORITY_TYPE = 'ISO';
        singleUsePatientID = EdgeDbManager('rsnadb', edgeHost, 'edge', 'd17bK4#M').getSingleUsePatientID(jobID);
        fullPatientID = singleUsePatientID + r'^^^&' + PATIENT_ID_ASSIGNING_AUTHORITY + r'&' + PATIENT_ID_ASSIGNING_AUTHORITY_TYPE;
        baseTest.retrieveXdsDocuments(fullPatientID, registryURL, repositoryURL, repositoryUID, retreivedFilesDirectory);
        if len(os.listdir(retreivedFilesDirectory)) == 0 :
            return (False, 'Zero documents retrieved');
          
        ## --------------------------------------------------------- ##
        print 'Validate retrieved documents'  
        ## --------------------------------------------------------- ##
        success = baseTest.validateRetrievedMetaDataLegality(retreivedFilesDirectory);
        if not success:
            return (False, "Failed due to illegal meta-data.");
        
        success = baseTest.validateRetrievedMetaDataMatch(retreivedFilesDirectory, customFieldsDictionary);
        if not success:
            return (False, "Failed due to meta-data mismatch.");
    
        success = baseTest.validateDcmSentDcmRetrievedBinaryMatch(sentFilesDirectory, retreivedFilesDirectory);
        if not success:
            return (False, "Failed due to sent-retrieved file binary mismatch.");
        
        success = baseTest.validateKosDcmMatch(retreivedFilesDirectory);
        if not success:
            return (False, "Failed due to manifest - retrieved file mismatch.");
            
            
        return (True, 'Passed Tests'); 
    
    def cleanup(self):
        self.xdsHl7.stopServer();
        #self.nist.stopServer();

    

if __name__ == "__main__":
    print 'Running A_7002_02 as main()'
    test = A_7002_02();
    testPassed, message = test.run();
    print message;
    test.cleanup();
    sys.exit(0) # exit indicating normal execution
