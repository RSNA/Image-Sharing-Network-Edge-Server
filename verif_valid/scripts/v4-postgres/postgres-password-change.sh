#!/bin/sh

# Change the postgres passwords for 3 accounts
# Echo the account names, existing password and suggested new values

for i in postgres edge mirth
do
 echo $i "porstgres edge      mirth   "
 echo $i "N3K647A   d17bK4#M  1947JAT$"
 echo $i "ABCDEF123 ABCDEF456 ABCDEF789"
 psql -d postgres -U $i -c "\password"
 echo ""
done
