#!/bin/bash

. /etc/rsna.conf
SSOADM=$RSNA_ROOT/ssoadm/openam/ssoadm

$SSOADM set-svc-attrs -u amAdmin -f $RSNA_ROOT/conf/ampwd.txt -e / -s iPlanetAMAuthService -a "iplanet-am-auth-dynamic-profile-creation=true"
$SSOADM create-svc -u amAdmin -f $RSNA_ROOT/conf/ampwd.txt --xmlfile $RSNA_ROOT/amAuthTokenAppAuth.xml
$SSOADM register-auth-module -u amAdmin -f $RSNA_ROOT/conf/ampwd.txt --authmodule org.rsna.isn.openam.TokenAppAuth
sleep 5
$SSOADM create-auth-instance -u amAdmin -f $RSNA_ROOT/conf/ampwd.txt -e / -t TokenAppAuth -m TokenAppAuth
sleep 5
$SSOADM update-auth-cfg-entr -u amAdmin -f $RSNA_ROOT/conf/ampwd.txt -e / --name ldapService -a "TokenAppAuth|SUFFICIENT|" "DataStore|REQUIRED|iplanet-am-auth-shared-state-enabled=true shared-state-enabled=true iplanet-am-auth-shared-state-behavior-pattern=useFirstPass"
