#!/bin/bash

. /etc/rsna.conf

$RSNA_ROOT/openam-cfg/opends/bin/export-ldif --port 4444 --hostname 127.0.0.1 --bindDN "cn=Directory Manager" --bindPassword chang3me --includeBranch ou=people,o=openam --includeBranch ou=groups,o=openam --backendID userRoot --ldifFile /tmp/user-export.ldif --start 0 --trustAll
