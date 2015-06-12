'''
Created on Mar 8, 2011

@author: mkelse01
'''
import psycopg2
import sys
from time import localtime
from time import strftime
from time import sleep

class EdgeDbManager():
    def __init__(self, dbName, dbHost, dbUser, dbPassword):
        self.dbName = dbName;
        self.dbHost = dbHost;
        self.dbUser = dbUser;
        self.dbPassword = dbPassword;
        
    def _connect(self):
        conn = psycopg2.connect('dbname='   + self.dbName
                                + ' host='  + self.dbHost 
                                + ' user='  +self.dbUser
                                + ' password=' + self.dbPassword
                                );
        cur = conn.cursor();
        return conn, cur
        
    def getMaxPatientID(self):
        conn, cur = self._connect();
        
        cur.execute("SELECT MAX(patient_id) FROM patients");
        maxID = cur.fetchone();
        
        cur.close();
        conn.close();
        return maxID[0];
    
    def getPatientIndex(self, mrn):
        conn, cur = self._connect();
        
        cur.execute("SELECT patient_id FROM patients WHERE mrn = %s", (str(mrn),));
        id = cur.fetchone();
        
        cur.close();
        conn.close();
        return id[0];
    
    def getMaxExamID(self):
        conn, cur = self._connect();
        
        cur.execute("SELECT MAX(exam_id) FROM exams");
        maxID = cur.fetchone();

        cur.close();
        conn.close();
        return maxID[0];
    
    def getExamID(self, patientIndex, accessionNumber):
        conn, cur = self._connect();
        
        cur.execute("SELECT exam_id FROM exams WHERE patient_id = %s AND accession_number = %s", (int(patientIndex), str(accessionNumber)));
        id = cur.fetchone();

        cur.close();
        conn.close();
        return id[0];

    def getLatestReportStatus(self, patientID, accessionNumber):
        conn, cur = self._connect();

        cur.execute("SELECT reports.report_id, reports.status FROM reports, exams, patients WHERE reports.exam_id = exams.exam_id AND exams.patient_id = patients.patient_id AND patients.mrn = %s AND exams.accession_number = %s", (str(patientID), str(accessionNumber)));
        results = cur.fetchall();
        if len(results) == 0:
            return None;
        newestCode = results[0];
        for row in results:
            if row[0] > newestCode[0]:
                newestCode = row
        cur.close();
        conn.close();
        return newestCode[1];
        

    def insertJobSet(self, patientIndex, userID, singleUseID):
        conn, cur = self._connect();
        
        cur.execute("INSERT INTO job_sets(patient_id, user_id, delay_in_hrs, single_use_patient_id) VALUES (%s, %s, %s, %s)", (int(patientIndex), int(userID), 0, str(singleUseID)));
        conn.commit();
        
        cur.close();
        conn.close();
    
    def getMaxJobSetID(self):
        conn, cur = self._connect();
        
        cur.execute("SELECT MAX(job_set_id) FROM job_sets");
        maxID = cur.fetchone();
        
        cur.close();
        conn.close();
        return maxID[0];

    def insertJob(self, jobSetID, examID):
        conn, cur = self._connect();

        cur.execute("INSERT INTO jobs(job_set_id, exam_id) VALUES (%s, %s)", (int(jobSetID), int(examID)));
        conn.commit();
        
        cur.close();
        conn.close();


    def getMaxJobID(self):
        conn, cur = self._connect();
        
        cur.execute("SELECT MAX(job_id) FROM jobs");
        maxID = cur.fetchone();
        
        cur.close();
        conn.close();
        return maxID[0];

    def insertTransaction(self, jobID, statusCode, comments):
        conn, cur = self._connect();

        cur.execute("INSERT INTO transactions(job_id, status_code, comments) VALUES (%s, %s, %s)", (int(jobID), int(statusCode), str(comments)));
        conn.commit();
        
        cur.close();
        conn.close();

    # insert job, job_set and transaction
    # return job_id
    def submitNewJobTransaction(self, patientIndex, examIndex, transactionStatusCode, comments):
        edgeUserID = 10; # Admin
        singleUseId = 'PI' + str(patientIndex) + str(strftime('%x-%X',localtime()));
        self.insertJobSet(patientIndex, edgeUserID, singleUseId);
        jobSetID = self.getMaxJobSetID();
        self.insertJob(jobSetID, examIndex);
        jobID = self.getMaxJobID();
        self.insertTransaction(jobID, transactionStatusCode, comments);
        return jobID;
    
    def getLastestTransactionStatus(self, jobId):
        conn, cur = self._connect();

        cur.execute("SELECT transaction_id, status_code FROM transactions WHERE job_id = (%s)", (int(jobId),));
        results = cur.fetchall();
        newestCode = results[0];
        for row in results:
        	if row[0] > newestCode[0]:
        		newestCode = row
        cur.close();
        conn.close();
        return newestCode[1];
       
    def getSingleUsePatientID(self, jobID):
        conn, cur = self._connect();

        cur.execute("SELECT single_use_patient_id FROM jobs, job_sets WHERE jobs.job_set_id = job_sets.job_set_id AND job_id = (%s)", (int(jobID),));
        result = cur.fetchone();
        cur.close();
        conn.close();
        return result[0];

def main():
    # run simple class test
    edgeDb = EdgeDbManager('rsnadb', '172.20.175.67', 'edge', 'd17bK4#M');

    newPatientEdgeID = edgeDb.getMaxPatientID();
    print 'Max Patient Edge ID: ' + str(newPatientEdgeID); 
    
    edgeDb.insertJobSet(newPatientEdgeID, 9, 'PID-' + str(newPatientEdgeID ) + '-' + str(strftime('%x-%X',localtime())));
    print 'Inserted new job set.'
    newJobSetEdgeID = edgeDb.getMaxJobSetID();
    print 'Max Job Set Edge ID: ' + str(newJobSetEdgeID); 
    newExamEdgeID = edgeDb.getMaxExamID();
    print 'Max Exam Edge ID: ' + str(newExamEdgeID); 
    edgeDb.insertJob(newJobSetEdgeID, newExamEdgeID)
    print 'Inserted new job.'
    newJobEdgeID = edgeDb.getMaxJobID();
    print 'Max Job Edge ID: ' + str(newJobEdgeID); 
    newJobEdgeID = edgeDb.submitNewJobTransaction(newPatientEdgeID, newExamEdgeID, 1, "Kelsey testing EdgeDbManager.py");
    print 'Inserted new transaction.';
    print 'Max Job Edge ID: ' + str(newJobEdgeID); 

    edgeDb.getLastestTransactionStatus(newJobEdgeID);
    sleep(5);
    edgeDb.getLastestTransactionStatus(newJobEdgeID);
    
if __name__ == "__main__": 
    print 'Running ' + __name__ + ' as main()';
    main();
    sys.exit(0) # exit indicating normal execution
