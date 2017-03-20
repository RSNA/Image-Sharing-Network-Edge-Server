#!/bin/sh

# Extract the RSNA database
# Run this script on a 4.0 or system 

pg_dump -U postgres -Fp -a --inserts -f rsnadb-4.0-system.sql rsnadb
