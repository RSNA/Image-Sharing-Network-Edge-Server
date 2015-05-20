\qecho users;
select user_id, user_login, user_name, email, crypted_password, salt, created_at, updated_at,
 remember_token, remember_token_expires_at, role_id, modified_date, active
from users order by user_id;

\qecho configurations;
select key, value, modified_date from configurations order by key;

\qecho devices;
select device_id, ae_title, host, port_number, modified_date from devices order by device_id;

\qecho patients;
select patient_id, mrn, patient_name, dob, sex, street, city, state,
 zip_code, modified_date, consent_timestamp
from patients order by patient_id;

\qecho exams;
select exam_id, accession_number, patient_id, exam_description, modified_date
from exams order by exam_id;

\qecho reports;
select report_id, exam_id, proc_code, status, status_timestamp, report_text,
  signer, dictator, transcriber, modified_date 
from reports order by report_id;

\qecho studies;
select study_id, study_uid, exam_id, study_description, study_date, modified_date
from studies order by study_id;

\qecho 'hipaa_audit_accession_numbers';
select id, view_id, accession_number, modified_date
from hipaa_audit_accession_numbers order by id;

\qecho job_sets;
select job_set_id, patient_id, user_id, email_address, modified_date,
 delay_in_hrs, single_use_patient_id
from job_sets order by job_set_id;

\qecho jobs;
select job_id, job_set_id, exam_id, report_id, document_id, modified_date
from jobs order by job_id;

\qecho transactions;
select transaction_id, job_id, status_code, comments, modified_date
from transactions order by transaction_id;
