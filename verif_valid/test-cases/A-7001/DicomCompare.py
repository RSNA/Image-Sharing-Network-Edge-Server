'''
Created on Mar 23, 2011

@author: mkelse01
'''

import sys
import dicom
import difflib
import re

class DicomCompare():
    '''
    classdocs
    '''


    def __init__(self):
        '''
        Constructor
        '''
        
    
    # return [mismatchTags, regErrors]
    def match(self, dcm1, dcm2):
        # diflib compare functions require a list of lines, each terminated with newline character
        # massage the string representation of each dicom dataset into this form:
        datasets = [dcm1, dcm2];
        rep = []
        for dataset in datasets:
            lines = str(dataset).split("\n")
            rep.append(lines)
        
        diff = difflib.Differ()
        mismatchTags = [];
        regExErrors = [];
        reTagNameValue = re.compile(r'[ \?\-\+] (\(\w+, \w+\)) (([^ ]+ ??)+)  +(\w+\:.+)');
        for line in diff.compare(rep[0], rep[1]):
            if line[0] != "?" and line[0] != " ":
                match = reTagNameValue.match(line);
                if(match):
                    # print 'Tag:', match.group(1), 'Name:', match.group(2), 'Value:', match.group(4)
                    tag = match.group(1);
                    name = match.group(2);
                    value = match.group(4);
                    if not [tag, name] in mismatchTags:
                        mismatchTags.append([tag, name, value])
                else:
                    regExErrors.append(line);
        
        return [mismatchTags, regExErrors];
    
    # perform match, ignoring tags eg: (0008, 0000) in dontCareList
    # return [mismatchTags, regErrors]
    def looseMatch(self, dcm1, dcm2, dontCareTagList):
        looseMismatchTags = [];
        mismatchTags, regExErrors = self.match(dcm1, dcm2);
        for tag in mismatchTags:
            if not tag[0] in dontCareTagList:
                looseMismatchTags.append(tag);
        return [looseMismatchTags, regExErrors];

    
    # We don't care if fields on this list match
    def getDontCareList(self):
        dontCareList = [];
        dontCareList.append('(0008, 0000)'); # Group Length
        dontCareList.append('(0008, 0090)'); # Referring Physician's Name
        dontCareList.append('(0008, 0054)'); # Retrieve AE Title
        dontCareList.append('(0008, 1030)'); # Study Description
        dontCareList.append('(0010, 0000)'); # Group Length
        dontCareList.append('(0012, 0000)'); # Group Length
        dontCareList.append('(0013, 0000)'); # Private Creator
        dontCareList.append('(0013, 0010)'); # Private Creator
        dontCareList.append('(0013, 0010)'); # Private tag data
        dontCareList.append('(0013, 1010)'); # Private tag data
        dontCareList.append('(0013, 1011)'); # Private tag data
        dontCareList.append('(0018, 0000)'); # Group Length
        dontCareList.append('(0020, 0000)'); # Group Length
        dontCareList.append('(0028, 0000)'); # Group Length
        dontCareList.append('(0029, 1008)'); # Private tag data
        dontCareList.append('(0029, 1108)'); # Private tag data
        dontCareList.append('(0029, 1109)'); # Private tag data
        dontCareList.append('(0029, 1110)'); # Private tag data
        dontCareList.append('(0029, 1134)'); # Private tag data
        dontCareList.append('(0032, 0000)'); # Group Length
        dontCareList.append('(0043, 0010)'); # Private Creator
        dontCareList.append('(0043, 1014)'); # Private tag data
        dontCareList.append('(0043, 1015)'); # Private tag data
        
        # Ignore for binary match, but check for meaningful value
 #       dontCareList.append('(0008, 0020)'); # Study Date
 #       dontCareList.append('(0008, 0030)'); # Study Time
 #       dontCareList.append('(0010, 0021)'); # Issuer of Patient ID
 #       dontCareList.append('(0010, 0030)'); # Patient's Birth Date
        
        
        return dontCareList;
        
def main():
    
    dcm1 = dicom.read_file('/tmp/ACCESSION-20110322170711/sent/9999.20110322170711.170714.170714.20110322170711.dcm');
    dcm2 = dicom.read_file('/tmp/ACCESSION-20110322170711/retrieved/9999.20110322170711.170714.170714.dcm');
    compare = DicomCompare();
    
    mismatch, errors = compare.match(dcm1, dcm2);
    print 'Mismatch:\n', mismatch;
    looseMismatch, errors = compare.looseMatch(dcm1, dcm2, compare.getDontCareList());
    print 'Loose Mismatch:\n', looseMismatch;
    
    print 'Errors', errors;
    
if __name__ == "__main__":
    print 'Running DicomCompare as main()'
    main();
    sys.exit(0) # exit indicating normal execution

      