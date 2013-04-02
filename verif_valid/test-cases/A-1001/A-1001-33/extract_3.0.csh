#!/bin/csh

psql rsnadb < ../../../db/rsnadb_schema_defs.sql > rsnadb_schema_3.0.txt
psql rsnadb < ../../../db/rsnadb_dump.sql >        rsnadb_dump_3.0.txt

echo Compare 2.1 to 3.0 schema
diff rsnadb_schema_2.1.txt rsnadb_schema_3.0.txt
if ($status == 0) then
 echo Unix diff found no differences in schema definitions
else
 echo Examine the diff output for differences in schemas
 echo This is a failure for the 2.1 to 3.0 upgrade
endif

echo Compare 2.1 to 3.0 data
diff rsnadb_dump_2.1.txt rsnadb_dump_3.0.txt
if ($status == 0) then
 echo Unix diff found no differences in database content
else
 echo Examine the diff output for differences in content
 echo This is a failure for the 2.1 to 3.0 upgrade
endif
