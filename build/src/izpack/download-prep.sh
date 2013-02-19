#!/bin/bash

echo "executing download-prep.sh"

mkdir -p $INSTALL_PATH/client_downloads
cp -v $INSTALL_PATH/conf/keystore.jks $INSTALL_PATH/client_downloads/
cp -v $INSTALL_PATH/conf/truststore.jks $INSTALL_PATH/client_downloads/

echo "completing download-prep.sh"

