#!/bin/bash

. /etc/rsna.conf

$RSNA_ROOT/openam-cfg/opends/bin/export-ldif --port 4444 --hostname 127.0.0.1 --bindDN "cn=Directory Manager" --bindPassword chang3me --includeBranch ou=people,o=openam --includeBranch ou=groups,o=openam --backendID userRoot --ldifFile ~/user-export-tmp.ldif --start 0 --trustAll

sed 's/o=openam/dc=isn,dc=rsna,dc=org/g' < ~/user-export-tmp.ldif | grep -v entryUUID > ~/user-export.ldif
rm ~/user-export-tmp.ldif
