'''
Created on Mar 21, 2011

@author: mkelse01
'''
from time import sleep
import os
import sys
from subprocess import Popen, PIPE

class HL7ReceiverManager(object):
    '''
    classdocs
    '''


    def __init__(self, exeJarPath, port, deadEnd=False, rejectAll=False):
        self.pathToExeJar = exeJarPath;
        self.process = None;
        self.port = port;
        self.deadEnd = deadEnd;
        self.rejectAll = rejectAll;
    
    def isAnInstanceRunning(self):
        cmd = 'ps -aef | grep HL7Receiver.jar';
        self.process = Popen(cmd, stdout=PIPE, stderr=PIPE, shell=True);
        out, err = self.process.communicate();
        if out.rfind('java') > -1:
            return True;
        return False;
            
        
    def startServer(self):
        cmd = [self.pathToExeJar];
        cmd.append(str(self.port));
        if(self.deadEnd):
            cmd.append('-d');
        if(self.rejectAll):
            cmd.append('-n')
        print 'Starting HL7 receiver: ', cmd;
        self.process = Popen(cmd, stdout=PIPE, stderr=PIPE);
        print 'HL7 receiver pid: ', self.process.pid;
#        out, err = self.process.communicate();
        # Wait 2 seconds for server to finish startup
        sleep(2);
        return (self.process.pid > 0)
        
    def stopServer(self):
        print 'Stopping HL7 Server'
        try:
            self.process.terminate();
        except:
            None;
    
    def __del__(self):
        if self.process != None:
            try:
                self.process.kill();
            except:
                None;

def main():
    # run simple class test
    receiver = HL7ReceiverManager('/home/mkelse01/HL7Receiver_manualStart/x/hl7Receiver.jar', 9082, False, False);
    receiver.isAnInstanceRunning();
    receiver.startServer();
    receiver.isAnInstanceRunning();
    
    #receiver.stopServer();
    
    
if __name__ == "__main__":
    print 'Running HL7ReceiverManager as main()'
    main();
    sys.exit(0) # exit indicating normal execution
