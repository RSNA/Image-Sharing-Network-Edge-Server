'''
Created on Mar 16, 2011

@author: mkelse01
'''
import sys
import dicom


class DicomReader():
    '''
    classdocs
    '''
    def __init__(self, fileName=None):
        self.ds = None;
        self.filePath = None;
        if(fileName != None and self.isValidDcmFile(fileName)):
            self.ds = dicom.read_file(fileName);
            self.filePath = fileName;
    
    def getDcm(self):
        return self.ds;
    
    # save dicom file with specified fields changed [[PatientName, LAST^FIRST], [PatientID, 1234]]
    def saveAs(self, outputFileName, substitutionList):
        for sub in substitutionList:
            if sub[0] in self.ds:
                self.ds.data_element(str(sub[0])).value = str(sub[1]);
            elif sub[0] in self.ds.file_meta:
                self.ds.file_meta.data_element(str(sub[0])).value = str(sub[1]);
            else:
                print 'Could not locate field: ' + str(sub[0]) + ' for substitution.'
                return False;
        self.ds.save_as(outputFileName);
        return True;

    def isValidDcmFile(self, fileName):
        valid = False;
        try:
            dicom.read_file(fileName)
            valid = True;
        except:
            valid = False;
        return valid;
    
    def getElementValueByName(self, name):
        if self.ds != None:
            if name in self.ds:
                return self.ds.data_element(name).value;
        return '';
    
    def getSopInstanceUID(self):
        if self.ds != None:
            return self.ds.SOPInstanceUID
        else:
            return '';
    
    def getSeriesInstanceUID(self):
        if self.ds != None:
            return self.ds.SeriesInstanceUID
        else:
            return '';
        
    def getStudyInstanceUID(self):
        if self.ds != None:
            return self.ds.StudyInstanceUID
        else:
            return '';
    def getStudySeriesSopUIDTuple(self):
        return [self.getStudyInstanceUID(), self.getSeriesInstanceUID(), self.getSopInstanceUID()];
        
    def containsKosSequence(self):
        if 'CurrentRequestedProcedureEvidences' in self.ds:
            return True;
    
    def getReferencedStudies(self):
        studyUIDs = [];
        if not self.containsKosSequence():
            return studyUIDs;
        for item in self.ds.data_element('CurrentRequestedProcedureEvidences'):
            studyUIDs.append(item.StudyInstanceUID)
        return studyUIDs;

    def getReferencedSeriesByStudy(self, studyUID):
        seriesUIDs = [];
        for item in self.ds.data_element('CurrentRequestedProcedureEvidences'):
            if item.StudyInstanceUID == studyUID:
                refSeries = item.ReferencedSeries;
                for ser in refSeries:
                    seriesUIDs.append(ser.SeriesInstanceUID);
        return seriesUIDs;
        
    def getReferencedSopInstancesByStudyAndSeries(self, studyUID, seriesUID):
        sopUIDs = [];
        for item in self.ds.data_element('CurrentRequestedProcedureEvidences'):
            if item.StudyInstanceUID == studyUID:
                refSeries = item.ReferencedSeries;
                for ser in refSeries:
                    if ser.SeriesInstanceUID == seriesUID:
                        sopSequence = ser.data_element('ReferencedSOPs') 
                        for sop in sopSequence:
                            sopUIDs.append(sop.ReferencedSOPInstanceUID)
        return sopUIDs;
    
    def getAllReferencedStudySeriesSopUIDTuples(self):
        studySeriesSopUids = [];
        for studyUID in self.getReferencedStudies():
            for seriesUID in self.getReferencedSeriesByStudy(studyUID):
                for sopUID in self.getReferencedSopInstancesByStudyAndSeries(studyUID, seriesUID):
                    uidTuple = [studyUID, seriesUID, sopUID];
                    studySeriesSopUids.append(uidTuple);
        return studySeriesSopUids;

def main():
    # run simple class test
    dcmReader = DicomReader('/tmp/ACCESSION-20110315170814/retrieved/2.25.286315495868222652873161677490794830768');
    print '### ALL ###';
    print dcmReader.ds;
    print '###########';
    if dcmReader.containsKosSequence():
       sqElement = dcmReader.ds.CurrentRequestedProcedureEvidences
       print str(sqElement)
    studies = dcmReader.getReferencedStudies();
    for study in studies:
        print 'Study: ' + study;
        series = dcmReader.getReferencedSeriesByStudy(study);
        for seriesInstance in series:
            print '  SeriesInstance: ' + seriesInstance
            sopUIDs = dcmReader.getReferencedSopInstancesByStudyAndSeries(study, seriesInstance)
            for sopUID in sopUIDs: 
                print '    SOP UID: ' + sopUID;

    
if __name__ == "__main__": 
    print 'Running ' + __name__ + ' as main()';
    main();
    sys.exit(0) # exit indicating normal execution
        