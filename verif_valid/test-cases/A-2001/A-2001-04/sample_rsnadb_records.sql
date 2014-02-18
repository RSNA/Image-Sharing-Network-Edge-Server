-- Nothing needed for configurations
delete from transactions;
delete from studies;
delete from jobs;
delete from job_sets;
delete from hipaa_audit_views;
delete from hipaa_audit_mrns;
delete from hipaa_audit_accession_numbers;
delete from reports;
delete from exams;
delete from patients;
delete from devices;
delete from users;

insert into users
	(user_id, user_login, user_name, email, crypted_password, salt,
	created_at, updated_at, remember_token, remember_token_expires_at, role_id,
	modified_date,active) values
	(10, 'admin', 'Admin User', 'admin@example.com', 'bf5f41c22dc80df8ac01d7d8ab59ac904c3cc495', '7335cc4d576fc77fecfdf0d986396c86904b3518',
	'2012-04-25 13:59:56.960298-04', '2012-04-25 13:59:56.960298-04', null, null, 2,
	'2012-04-25 13:59:56.960298-04', 't'),
	(20, 'test', 'Test User', 'test@example.com', 'password', 'salt',
	'2013-04-01 14:50:00.000000-04', '2013-04-01 14:50:00.000000-04', null, null, 2,
	'2013-04-01 14:50:00.000000-04', 't');


insert into devices
	(device_id, ae_title, host, port_number, modified_date) values
	(100,'MOORE-ONE', 'm-one',  104, '2013-03-30 12:00:00-04'),
	(200,'MOORE-TWO', 'm-two', 1112, '2013-04-01 13:00:00-04');

insert into patients
	(patient_id,mrn,patient_name,dob,sex,street,city,state,zip_code,modified_date,consent_timestamp) values
	(1,'MRN-01','Name^One','19620125','M','Street','STL','MO','63111','2013-03-30 12:00:00-04', '2013-03-30 12:15:00-04'),
	(2,'MRN-02','Name^Two','19881204','F','E Lake','Chi','IL','60500','2013-04-01 12:00:00-04', '2013-04-01 12:15:00-04');

insert into exams
	(exam_id, accession_number, patient_id, exam_description, modified_date) values
	(1, 'ACC-ONE', 1, 'Exam Desc - 1', '2013-03-30 12:00:00-04'),
	(2, 'ACC-TWO', 2, 'Exam Desc - 2', '2013-04-01 13:00:00-04');

insert into reports
	(report_id, exam_id, proc_code, status, status_timestamp, report_text, signer, dictator, transcriber, modified_date) values
	(1, 1, 'N', 'C', '2013-03-30 14:30:00-04', 'One: Report text', 'One: Signer', 'One: Dictator', 'One:_Trans', '2013-03-30 14:31:00-04'),
	(2, 2, 'N', 'C', '2013-04-01 14:30:00-04', 'Two: Report text', 'Two: Signer', 'Two: Dictator', 'One:_Trans', '2013-04-01 14:31:00-04');


insert into hipaa_audit_accession_numbers
	(id, view_id, accession_number, modified_date) values
	(1, 1, 'ACC-ONE', '2013-03-30 14:00:00-04'),
	(2, 2, 'ACC-TWO', '2013-04-01 14:00:00-04');

insert into hipaa_audit_mrns
	(id, view_id, mrn, modified_date) values
	(1, 1, 'MRN-ONE', '2013-03-30 14:10:00-04'),
	(2, 2, 'MRN-TWO', '2013-04-01 14:10:00-04');

insert into hipaa_audit_views
	(id, requesting_ip, requesting_username, requesting_uri, modified_date) values
	(1, '192.168.1.1', 'HIPAA-One', 'http://www.edge.xxx.edu/one', '2013-03-30 14:20:00-04'),
	(2, '192.168.1.2', 'HIPAA-Two', 'http://www.edge.xxx.edu/two', '2013-04-01 14:20:00-04');

insert into job_sets
	(job_set_id, patient_id, user_id, email_address, modified_date, delay_in_hrs, single_use_patient_id) values
	(1, 1, 10, 'job-1@gmail.com', '2013-03-30 15:00:00-04', 10, 'hash-one'),
	(2, 2, 20, 'job-2@gmail.com', '2013-04-01 15:00:00-04', 20, 'hash-two');

insert into jobs
	(job_id, job_set_id, exam_id, report_id, document_id, modified_date) values
	(1, 1, 1, 1, 'document ID 1', '2013-03-30 16:00:00-04'),
	(2, 2, 2, 2, 'document ID 2', '2013-04-01 16:00:00-04');

--  | patient_merge_events                 | table    | edge



-- Nothing in roles
--  | roles                                | table    | edge

-- schema_version has one row inserted during installation
--  | schema_version                       | table    | edge

-- status_codes has values inserted during installation
--  | status_codes                         | table    | edge

insert into studies
	(study_id, study_uid, exam_id, study_description, study_date, modified_date) values
	(1, '1.2.1', 1, 'One: Study Desc', '2013-03-30 14:40:00-04', '2013-03-30 14:41:00-04'),
	(2, '1.2.2', 2, 'Two: Study Desc', '2013-04-01 14:40:00-04', '2013-04-01 14:41:00-04');

--  | transactions                         | table    | edge
insert into transactions
	(transaction_id, job_id, status_code, comments, modified_date) values
	(1, 1, -33, 'Transaction test 1', '20130731 120101'),
	(2, 2, -20, 'Transaction test 2', '20130831 120101');

update configurations set value = 'TEST-VALUE';
