#!/bin/csh

psql rsnadb < ../../../db/rsnadb_schema_defs.sql > rsnadb_schema_3.1.txt

psql rsnadb < ../../../db/rsnadb_dump.sql >        rsnadb_dump_3.1.txt
