'''
Created on Mar 8, 2011

@author: mkelse01
'''
import os
import sys
import subprocess

class DicomManager():
    def __init__(self, dcm4CheHome=None, aeTitle=None, dcmHost=None, port=None):
        self.dcm4CheDir = dcm4CheHome;
        self.aeTitle = aeTitle;
        self.dcmHost = dcmHost;
        self.port = port;

    def checkDicomRcvr(self):
        if(len(self.aeTitle) == 0 | len(self.dcmHost) == 0 | len(self.port) == 0):
            print "Missing aeTitle, dcmHost or port in checkDicomRcvr()"
            exit(1)
        dcmEchoCommand = self.dcm4CheDir + '/bin/dcmecho ' + self.aeTitle + '@' + self.dcmHost + ':' + self.port;
        print dcmEchoCommand;
        error = subprocess.call(dcmEchoCommand, shell=True);
        if(error != 0):
            print "DICOM Connection failed.\n\n";
            exit(1);
        else:
            print "DICOM Connection success.\n\n";
    
    def prepareDicomFile(self, sourceDcmFile, destDicomFile, patientName, patientID, accessionNumber, studyUID, seriesUID, sopUID):
        studyTime = '120000';
        
        dcmCommand = self.dcm4CheDir + '/bin/dcm2dcm ';
        dcmCommand += " -s 00100010='" + patientName + "' ";
        dcmCommand += " -s 00100020='" + patientID + "' ";
        dcmCommand += " -s 00080050='" + accessionNumber + "' ";
        dcmCommand += " -s 00080050='" + sopUID + "' "; # SOP Instance UID
        dcmCommand += " -s 00080030='" + studyTime + "' ";
        dcmCommand += " -s 0020000D='" + studyUID + "' "; # Study Instance UID
        dcmCommand += " -s 0020000E='" + seriesUID + "' "; # Series Instance UID
        dcmCommand += sourceDcmFile + " ";
        dcmCommand += destDicomFile + " ";

        print dcmCommand;
        error = subprocess.call(dcmCommand, shell=True);
        if(error != 0):
            print "DICOM Prepare failed.\n\n";
            exit(1);
        else:
            print "DICOM Prepare success.\n\n";
    
    def sendDicomFiles(self, dcmFileFolder, patientName, patientID, accessionNumber):
        studyTime = '120000';
        if(len(self.aeTitle) == 0 | len(self.dcmHost) == 0 | len(self.port) == 0):
            print "Missing aeTitle, dcmHost or port in checkDicomRcvr()"
            exit(1);
        dcmSendCommand = self.dcm4CheDir + '/bin/dcmsnd ' + self.aeTitle + '@' + self.dcmHost + ':' + self.port + ' ' + dcmFileFolder;

        
        print dcmSendCommand;
        error = subprocess.call(dcmSendCommand, shell=True);
        if(error != 0):
            print "DICOM Send failed.\n\n";
            exit(1);
        else:
            print "DICOM Send success.\n\n";

    def sendModifiedDicomFiles(self, dcmFileFolder, patientName, patientID, accessionNumber):
        studyTime = '120000';
        if(len(self.aeTitle) == 0 | len(self.dcmHost) == 0 | len(self.port) == 0):
            print "Missing aeTitle, dcmHost or port in checkDicomRcvr()"
            exit(1);
        dcmSendCommand = self.dcm4CheDir + '/bin/dcmsnd ' + self.aeTitle + '@' + self.dcmHost + ':' + self.port + ' ' + dcmFileFolder;
        dcmSendCommand += " -set 00100010='" + patientName + "' ";
        dcmSendCommand += " -set 00100020='" + patientID + "' ";
        dcmSendCommand += " -set 00080050='" + accessionNumber + "' ";
        dcmSendCommand += " -set 00080030='" + studyTime + "' ";
        dcmSendCommand += " -set 0020000D='" + patientID + "' "; # Study Instance UID
        dcmSendCommand += " -set 0020000E='" + patientID + "' "; # Series Instance UID
        dcmSendCommand += " -setuid "        + patientID ;

        
        print dcmSendCommand;
        error = subprocess.call(dcmSendCommand, shell=True);
        if(error != 0):
            print "DICOM Send failed.\n\n";
            exit(1);
        else:
            print "DICOM Send success.\n\n";
    
    
    def dcm2Xml(self, dcmFilePath, xmlFilePath):
        
        dcm2XmlCommand =  self.dcm4CheDir + '/bin/dcm2xml ';
        # exclude pixel data - send to filename 7FE00010
        dcm2XmlCommand += '-X ';
        dcm2XmlCommand += '-o ' + xmlFilePath;
        dcm2XmlCommand += dcmFilePath;

def main():
    # run simple class test
    dcmManager = DicomManager(os.environ['DCM4CHE_HOME'],'RSNA-ISN', 'localhost', '4104');
    #dcmManager.checkDicomRcvr();
    
    
if __name__ == "__main__": 
    print 'Running ' + __name__ + ' as main()';
    main();
    sys.exit(0) # exit indicating normal execution
