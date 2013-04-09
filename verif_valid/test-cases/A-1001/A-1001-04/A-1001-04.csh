#!/bin/csh

setenv PGUSER postgres

psql rsnadb << __EOF > configurations.txt
select * from configurations;
__EOF

echo "" >> configurations.txt
date >> configurations.txt
