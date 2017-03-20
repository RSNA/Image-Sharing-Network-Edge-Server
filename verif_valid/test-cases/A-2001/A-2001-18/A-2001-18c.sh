#!/bin/sh


LOG=A-2001-18.c.txt

echo Test A-2001-18: Step C > $LOG
date >> $LOG
psql -U postgres rsnadb < schema.sql >> $LOG
echo Import database and then dump schema version >> $LOG

# Import 3.2 database into 4.0
# Run this script on a 4.0 or system

dropdb -U postgres rsnadb
pg_restore -Fc --create -d postgres -U postgres rsnadb.sql
psql -U postgres rsnadb < schema.sql >> $LOG

echo Update schema version >> $LOG
psql -U postgres -d rsnadb -f $RSNA_ROOT/db/RSNADB.rollout.v4.0.0.sql
psql -U postgres rsnadb < schema.sql >> $LOG

date >> $LOG
