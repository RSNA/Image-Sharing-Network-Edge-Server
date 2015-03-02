#!/bin/csh

psql rsnadb < ../../../db/rsnadb_schema_defs.sql > rsnadb_schema_3.2-new-install.txt
psql rsnadb < ../../../db/rsnadb_dump.sql >        rsnadb_dump_3.2-new-install.txt

