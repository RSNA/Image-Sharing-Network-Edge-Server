#!/bin/csh

if ($1 == "") then
 echo "Usage: new_folder.csh FOLDER_NAME"
 exit 1
endif

if (-e $1) rm -r $1

mkdir -p $1
