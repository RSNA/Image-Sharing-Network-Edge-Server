#!/bin/sh

# Test new postgres passwords for three accounts
# Echo the account names and the new suggested values

for i in postgres edge mirth
do
 echo $i "porstgres edge      mirth   "
 echo $i "ABCDEF123 ABCDEF456 ABCDEF789"
 psql -U $i --list
 echo ""
done
