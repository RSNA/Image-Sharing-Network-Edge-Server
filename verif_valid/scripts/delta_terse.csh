#!/bin/csh

if ($2 == "") then
 echo "This script, delta_terse.csh, takes two file arguments"
 exit
endif

if ($3 != "") then
 echo "This script, delta_terse.csh, takes two file arguments"
 exit
endif

diff $1 $2 > /dev/null

if ($status != 0) then
 echo DIFF $1 $2
endif
