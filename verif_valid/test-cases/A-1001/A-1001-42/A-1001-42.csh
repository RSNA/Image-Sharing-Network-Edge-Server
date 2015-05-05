#!/bin/csh

# This script tests for differences in files after a 3.0 to 3.1 update.

set BASE_3_2=/usr/local/edgeserver
set BASE_3_1=/usr/local/edgeserver-3.1

date

# The first group are files that should differ
echo Testing files that should have changed
foreach i (token-app.war)
 echo " " $i
 diff $BASE_3_1/$i $BASE_3_0/$i > /dev/null
 if ($status == 0) then
  echo Error: files are the same when they should differ: $i
 endif
end

# The second group are files that should not have changed

echo ""
echo Checking for files that should not have changed
foreach i (conf/keystore.jks conf/truststore.jks)
 echo " " $i
 diff $BASE_3_1/$i $BASE_3_0/$i > /dev/null
 if ($status == 1) then
  echo Error: files differ when they should match: $i
 endif
end

