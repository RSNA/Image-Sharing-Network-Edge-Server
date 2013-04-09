#!/bin/csh

setenv PGUSER postgres

psql rsnadb << __EOF > devices.txt
select * from devices;
__EOF

echo "" >> devices.txt
date >> devices.txt
