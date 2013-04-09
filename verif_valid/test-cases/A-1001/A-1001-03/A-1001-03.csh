#!/bin/csh

setenv PGUSER postgres

psql rsnadb << __EOF > users.txt
select * from users;
__EOF

echo "" >> users.txt
date >> users.txt
