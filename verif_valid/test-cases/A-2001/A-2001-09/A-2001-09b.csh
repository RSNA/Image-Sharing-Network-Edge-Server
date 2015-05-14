#!/bin/csh

set  INPUT_FOLDER=data/A-2001/A-2001-09/3.1_schema
set OUTPUT_FOLDER=data/A-2001/A-2001-09/3.2_schema
mkdir -p $OUTPUT_FOLDER
foreach i ( \
        configurations	\
	devices	\
	exams	\
	hipaa_audit_accession_numbers	\
	hipaa_audit_mrns     \
        hipaa_audit_views	\
	job_sets	\
	jobs	\
	patient_merge_events	\
	patients	\
	reports	\
	roles     \
        schema_version	\
	status_codes	\
	studies	\
	transactions	\
	users	\
	v_exam_status	\
	v_job_status \
)
 echo $i
 echo "\d $i;" > /tmp/schema_def.sql
 psql rsnadb < /tmp/schema_def.sql > $OUTPUT_FOLDER/$i.schema.txt
 diff -b $INPUT_FOLDER/$i.schema.txt $OUTPUT_FOLDER/$i.schema.txt > $OUTPUT_FOLDER/$i.delta.txt
end

foreach i ( \
	email_configurations	\
	email_jobs	\
	v_consented	\
	v_exams_sent	\
	v_patients_sent	\
)
 if (-e $INPUT_FOLDER/$i.schema.txt) then
  echo ERROR: $i $INPUT_FOLDER/$i.schema.txt should not exist in 3.1 folder
 endif
end

