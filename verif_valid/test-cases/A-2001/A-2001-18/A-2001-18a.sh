#!/bin/sh

# Extract the RSNA database
# Run this script on a 3.2 or 3.2.1 system and copy rsnadb.sql to the 4.0 system

pg_dump -U postgres -Fc              -f rsnadb.sql rsnadb

pg_dump -U postgres -Fp -a --inserts -f rsnadb-3.2.sql rsnadb
