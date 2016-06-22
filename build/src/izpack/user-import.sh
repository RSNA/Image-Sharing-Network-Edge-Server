#!/bin/bash

. /etc/rsna.conf

TMP=$(mktemp --suffix=ldif)

sed 's/o=openam/dc=isn,dc=rsna,dc=org/g' < $1 > $TMP
chmod +r $TMP

$RSNA_ROOT/opendj/bin/import-ldif -h localhost -t 0 -n userRoot -a -r -D "cn=Directory Manager" --port 4444 -w Hazmiljad4 -l $TMP -X
