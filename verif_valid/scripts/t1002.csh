#!/bin/csh

set COUNT=4

if ($1 != "") set COUNT=$1

perl scripts/load_dicom_images.pl RSNA-ISN localhost 4104 /rsna/test-data/DTI-001/87182445 $COUNT
