#!/bin/csh

if (! -e data/A-2001) then
 echo "Folder data/A-2001 does not exist; you are probably in the wrong folder."
 exit 1
endif

set OUTPUT_FOLDER=data/A-2001/A-2001-09/3.1_schema
mkdir -p $OUTPUT_FOLDER
foreach i ( \
	configurations	\
	devices	\
	devices_device_id_seq	\
	exams	\
	exams_exam_id_seq	\
	hipaa_audit_accession_numbers	\
	hipaa_audit_accession_numbers_id_seq	\
	hipaa_audit_mrns	\
	hipaa_audit_mrns_id_seq	\
	hipaa_audit_views	\
	hipaa_audit_views_id_seq	\
	job_sets	\
	job_sets_job_set_id_seq	\
	jobs	\
	jobs_job_id_seq	\
	patient_merge_events	\
	patient_merge_events_event_id_seq	\
	patients	\
	patients_patient_id_seq	\
	reports	\
	reports_report_id_seq	\
	roles	\
	schema_version	\
	schema_version_id_seq	\
	status_codes	\
	studies	\
	studies_study_id_seq	\
	transactions	\
	transactions_transaction_id_seq	\
	users	\
	users_user_id_seq	\
	v_exam_status	\
	v_job_status	\
)
 echo $i
 echo "\d $i;" > /tmp/schema_def.sql
 psql rsnadb < /tmp/schema_def.sql > $OUTPUT_FOLDER/$i.schema.txt
end

