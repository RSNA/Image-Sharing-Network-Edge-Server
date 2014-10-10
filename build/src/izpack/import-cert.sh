#!/bin/bash

. /etc/rsna.conf

$JAVA_HOME/bin/keytool -printcert -file $1 &&
$JAVA_HOME/bin/keytool -import -alias edge -storepass edge1234 -keypass edge1234 -keystore $RSNA_ROOT/conf/keystore.jks -file $1
