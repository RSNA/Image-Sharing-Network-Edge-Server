'''
Created on Mar 15, 2011

@author: mkelse01
'''
from A_7001_01_BaseFlow import A_7001_01
from EdgeDbManager import EdgeDbManager
from HL7ReceiverManager import HL7ReceiverManager
from NistRepositoryManager import NistRepositoryManager
from time import localtime
from time import strftime
import sys
import os

tempRoot = '.';
mesaDir = '.';
mesaToolDir = '.';
dataRoot = '.';
dcm4CheDir = '.';


class A_11001_1():
    def run(self):
    
        print '''
        A_11001_1_CompareDirectories:
        '''
        
        sentDirectory = '/tmp/ACCESSION-20120214123525/sent/';
        retreivedFilesDirectory = '/tmp/ACCESSION-20120214123525/retrieved/';
        
        global tempRoot;
        global mesaDir;
        global mesaToolDir;
        global dataRoot;
        global dcm4CheDir;
        
        self.verifyEnvironment();
        
        testName = 'A_11001_1_CompareDirectories';
        
        testDataDir = dataRoot + '/A-7001/A-7001-01';
        baseTest = A_7001_01(testName, tempRoot, None, None, None, None);

        
          
        ## --------------------------------------------------------- ##
        print 'Validate retrieved documents'  
        ## --------------------------------------------------------- ##
        
        
        success = baseTest.validateKosDcmMatch(retreivedFilesDirectory);
        if not success:
            return (False, "Failed due to manifest - retrieved file mismatch.");
            
            
        return (True, 'Passed Tests'); 
    
    def cleanup(self):
       None 
    def verifyEnvironment(self):
        global tempRoot;
        global mesaDir;
        global mesaToolDir;
        global dataRoot;
        global dcm4CheDir;
        ## Verify environment
        if not 'MESA_TARGET' in os.environ:
            print "Missing MESA_TARGET"
            exit(1)
        else:
            mesaDir = os.environ['MESA_TARGET'];
            mesaToolDir = mesaDir + '/bin';
    
        if not 'VERIF_VALID_HOME' in os.environ:
            print "Missing VERIF_VALID_HOME"
            exit(1)
        else:
            dataRoot = os.environ['VERIF_VALID_HOME'] + '/data';
    
        if not 'DCM4CHE_HOME' in os.environ:
            print "Missing DCM4CHE_HOME"
            exit(1)
        else:
            dcm4CheDir = os.environ['DCM4CHE_HOME'];
            
        if not 'TEMP' in os.environ:
            tempRoot = '/tmp';
        else:
            tempRoot = os.environ['TEMP'];
    

if __name__ == "__main__":
    print 'Running A_11001_1 as main()'
    test = A_11001_1();
    testPassed, message = test.run();
    print message;
    test.cleanup();
    sys.exit(0) # exit indicating normal execution
