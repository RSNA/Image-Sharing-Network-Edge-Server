'''
Created on Mar 22, 2011

@author: mkelse01
'''
from time import sleep
import os
import sys
from subprocess import Popen, PIPE

class NistRepositoryManager():
    '''
    classdocs
    '''

    def __init__(self, scriptDirectory):
        self.scriptDirectory = scriptDirectory;
        self.process = None;
        
    def startServer(self):
        cmd = [self.scriptDirectory + '/startup.sh'];
        self.process = Popen(cmd, stdout=PIPE, stderr=PIPE);
        out, err = self.process.communicate();
        sleep(2);
        print out;
        if err != '':
            print 'ERROR\n', err;
        return (self.process.pid > 0);
    
    def isAlive(self):
        if self.process != None:
            return True
        else:
            return False   
    
    def stopServer(self):
        print 'Stopping NIST Server'
        pid = None
        try:
            cmd = [self.scriptDirectory + '/shutdown.sh'];
            self.process = Popen(cmd, stdout=PIPE, stderr=PIPE);
            out, err = self.process.communicate();
            sleep(2);
            pid = self.process.pid > 0
            print out;
            if err != '':
                print 'ERROR\n', err;
            else:
                self.process = None
        except:
            print 'Failed to shutdown NIST server';
        return (pid);
    
    def __del__(self):
        cmd = [self.scriptDirectory + '/shutdown.sh'];
        try:
            self.process = Popen(cmd, stdout=PIPE, stderr=PIPE);
        except:
            None;

def main():
    # run simple class test
    receiver = NistRepositoryManager('/usr/local/tomcat1/bin');
    receiver.startServer();
    sleep(5);
    receiver.stopServer();
    
    
if __name__ == "__main__":
    print 'Running NistRepositoryManager as main()'
    main();
    sys.exit(0) # exit indicating normal execution
       