#!/bin/bash

# -U is the database user name
# -W forces a password prompt
# -d is the database name you want to run the script against
psql -U edge -W -d edge < RSNADB.sql
