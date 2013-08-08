#!/bin/csh


echo "select version from schema_version;" > /tmp/edge-server-version.sql
psql rsnadb < /tmp/edge-server-version.sql > /tmp/edge-server-version.txt

set A=`awk 'NR==3' /tmp/edge-server-version.txt`
echo $A
if ($A != "2.1.0") then
 echo This script is only to be run on an edge server at version 2.1 or 3.0
 echo The schema version should be 2.1.0 and not $A
 echo "Script will exit now (error)"
 exit 1
endif

mkdir -p data/2.1_schema
foreach i ( \
	configurations devices exams hipaa_audit_accession_numbers hipaa_audit_mrns	\
	hipaa_audit_views job_sets jobs patient_merge_events patients reports roles	\
	schema_version status_codes studies transactions user v_exam_status v_job_status \
)
 echo $i
 echo "\d $i;" > /tmp/schema_def.sql
 psql rsnadb < /tmp/schema_def.sql > data/2.1_schema/$i.schema.txt
end
