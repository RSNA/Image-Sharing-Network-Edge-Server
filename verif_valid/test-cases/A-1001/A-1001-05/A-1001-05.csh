#!/bin/csh

setenv PGUSER postgres

psql rsnadb << __EOF > status_codes.txt
select * from status_codes;
__EOF

echo "" >> status_codes.txt
date >> status_codes.txt
