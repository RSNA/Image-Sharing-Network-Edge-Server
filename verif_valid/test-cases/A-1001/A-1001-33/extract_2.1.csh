#!/bin/csh

psql rsnadb < ../../../db/rsnadb_schema_defs.sql > rsnadb_schema_2.1.txt

psql rsnadb < ../../../db/rsnadb_dump.sql >        rsnadb_dump_2.1.txt
