#!/bin/bash

echo "executing keygen.sh"

DN_SERVER_NAME=$1
DN_OU=$2
DN_O=$3
DN_L=$4
DN_ST=$5
DN_C=$6
VALID_DAYS=$7
UPGRADE=$8
TEST=$9

DN="CN=$DN_SERVER_NAME, OU=${DN_OU/,/\\,}, O=${DN_O/,/\\,}, L=${DN_L/,/\\,}, ST=${DN_ST/,/\\,}, C=$DN_C"

echo "UPGRADE is $UPGRADE"

echo "Generating client certificate..."

if [ "$UPGRADE" == '1' ] || [ -f $INSTALL_PATH/conf/keystore.jks ]
  then
    echo "client certificate exists, skipping"
    exit 0
fi
keytool -genkey -keyalg RSA -dname "$DN" -storepass edge1234 -keypass edge1234 -keysize 2048 -alias edge -validity $VALID_DAYS -keystore $INSTALL_PATH/conf/keystore.jks &&
keytool -export -v -rfc -alias edge -storepass edge1234 -keypass edge1234 -keystore $INSTALL_PATH/conf/keystore.jks > $INSTALL_PATH/client.pem &&
echo "Done, exported certificate: $INSTALL_PATH/client.pem"

echo "completing keygen.sh"

