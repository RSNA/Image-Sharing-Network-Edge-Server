#!/bin/csh

psql rsnadb < ../../../db/rsnadb_schema_defs.sql > rsnadb_schema_3.2.txt
psql rsnadb < ../../../db/rsnadb_dump-3.2.sql >    rsnadb_dump_3.2.txt

#echo Compare 3.1 to 3.2 schema
#diff rsnadb_schema_3.1.txt rsnadb_schema_3.2.txt
#if ($status == 0) then
# echo Unix diff found no differences in schema definitions
#else
# echo Examine the diff output for differences in schemas
# echo This is a failure for the 3.1 to 3.2 upgrade
#endif
#
#echo Compare 3.1 to 3.2 data
#diff rsnadb_dump_3.1.txt rsnadb_dump_3.2.txt
#if ($status == 0) then
# echo Unix diff found no differences in database content
#else
# echo Examine the diff output for differences in content
# echo This is a failure for the 3.1 to 3.2 upgrade
#endif
