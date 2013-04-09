#!/bin/csh

if ("$1" == "") then
 echo "This script, delta_terse.csh, takes one file argument"
 exit
endif

if ("$2" != "") then
 echo "This script, delta_terse.csh, takes one file argument"
 exit
endif

diff "$1" "/usr/local/edgeserver/$1" > /dev/null

if ($status != 0) then
 echo DIFF "$1" "/usr/local/edgeserver/$1"
endif
