#!/bin/csh

psql rsnadb < test-cases/A-2001/A-2001-04/sample_rsnadb_records.sql

if ($status != 0) then
 echo Error loading data into rsnadb for 2.1 schema
 exit 1
endif

psql rsnadb < test-cases/A-2001/A-2001-04/extract_db_records.sql > data/A-2001/A-2001-04/extract_2.1.txt

if ($status != 0) then
 echo Error extracting data from rsnadb 2.1 schema
 exit 1
endif
