'''
Created on Mar 14, 2011

@author: mkelse01

Communicate with XDSb repository/registry via XdsbManager.jar app
'''
import os
import sys
import subprocess


class ClearinghouseManager():
    def __init__(self, xdsbRegistryUrl, xdsbRepositoryUrl, xdsbRepositoryUID, externalToolsDir):
        self.xdsbManagerAppPath = externalToolsDir;
        self.xdsbRegistryUrl = xdsbRegistryUrl;
        self.xdsbRepositoryUrl = xdsbRepositoryUrl;
        self.xdsbRepositoryUID = xdsbRepositoryUID;

    def retreiveFilesByPatientID(self, patientID, retreiveStorageDirectory):
        if len(self.xdsbManagerAppPath) == 0:
            print "Missing xdsbManagerAppPath in ClearinghouseManger()"
            exit(1);
        if len(self.xdsbRegistryUrl) == 0:
            print "Missing xdsbRegistryUrl in ClearinghouseManger()"
            exit(1);
        if len(self.xdsbRepositoryUrl) == 0:
            print "Missing xdsbRepositoryUrl in ClearinghouseManger()"
            exit(1);
        if len(self.xdsbRepositoryUID) == 0:
            print "Missing xdsbRepositoryUID in ClearinghouseManger()"
            exit(1);
        if len(patientID) == 0:
            print "Missing patientID in ClearinghouseManger.retreiveFilesByPatientID()"
            exit(1);
        if len(retreiveStorageDirectory) == 0:
            print "Missing retreiveStorageDirectory in ClearinghouseManger.retreiveFilesByPatientID()"
            exit(1);
        
        
        xdsbRetreiveCommand = self.xdsbManagerAppPath + '/XDSbManager.jar';
        xdsbRetreiveCommand += ' -d ' + retreiveStorageDirectory;
        xdsbRetreiveCommand += ' -pid "' + patientID + '"';
        xdsbRetreiveCommand += ' -registryURI "' + self.xdsbRegistryUrl + '"';
        xdsbRetreiveCommand += ' -repositoryURI "' + self.xdsbRepositoryUrl + '"';
        xdsbRetreiveCommand += ' -RUID "' + self.xdsbRepositoryUID + '"';
        xdsbRetreiveCommand += ' -saveMetadata ';
        xdsbRetreiveCommand += ' > /dev/null '; # Throw away output
        
        print xdsbRetreiveCommand;
        error = subprocess.call(xdsbRetreiveCommand, shell=True);
        if(error != 0):
            print "xdsbRetreiveCommand Send failed.\n\n";
            exit(1);
        else:
            print "xdsbRetreiveCommand Send success.\n\n";
        

def main():
    # run simple class test
    xdsb = ClearinghouseManager('http://172.20.175.67:9080/axis2/services/xdsregistryb', 'http://172.20.175.67:9080/axis2/services/xdsrepositoryb', '1.2.3.4.5.6.7.8');
    xdsb.retreiveFilesByPatientID('PI28703/14/11-15:59:37', '/tmp/1234567')

if __name__ == "__main__": 
    print 'Running ' + __name__ + ' as main()';
    main();
    sys.exit(0) # exit indicating normal execution
