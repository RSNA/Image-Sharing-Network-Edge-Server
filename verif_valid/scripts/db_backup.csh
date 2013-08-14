#!/bin/csh

if ($1 == "") then
  echo "This script takes db name as a parameter"
  exit
endif

setenv d `date '+%Y%m%d%H%M'`

setenv outfile $1.$d.backup

pg_dump -Fc $1 > $outfile

ls -l $outfile

