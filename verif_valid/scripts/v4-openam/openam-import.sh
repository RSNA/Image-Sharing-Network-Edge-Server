#!/bin/sh

# This is for the password: 1947OpenAM
encrypted=fdiaJt/AnVXsVxPO5ZIipEH4KH4+H1BJ

sudo $RSNA_ROOT/ssoadm/openam/ssoadm import-svc-cfg -u amAdmin -e $encrypted -f pwd.txt -X config.xml
