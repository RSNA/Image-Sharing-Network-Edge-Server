#!/bin/csh

mkdir -p data/A-2001/schemas_full
perl test-cases/A-2001/A-2001-extract-schema.pl > data/A-2001/schemas_full/3.1_upgrade.txt
