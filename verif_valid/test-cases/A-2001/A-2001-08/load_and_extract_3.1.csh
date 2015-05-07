#!/bin/csh


if (! -e data/A-2001) then
 echo "Folder data/A-2001 does not exist; you are probably in the wrong starting folder."
 exit 1
endif

if (! -e data/A-2001/A-2001-08) then
 mkdir data/A-2001/A-2001-08
endif

psql rsnadb < test-cases/A-2001/A-2001-08/sample_rsnadb_records.sql

if ($status != 0) then
 echo Error loading data into rsnadb for 3.1 schema
 exit 1
endif

psql rsnadb < test-cases/A-2001/A-2001-08/extract_db_records.sql > data/A-2001/A-2001-08/extract_2.1.txt

if ($status != 0) then
 echo Error extracting data from rsnadb 3.1 schema
 exit 1
endif
