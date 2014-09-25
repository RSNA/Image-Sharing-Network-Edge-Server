#!/bin/bash

CTP_DIR=/usr/local/ctp
INSTALL_SCRIPT=$(readlink -f $0)
INSTALL_SCRIPT_DIR=$(cd ${INSTALL_SCRIPT%/*} && pwd)

A=$(ps aux | grep [e]dgeserver | awk '{print $2}')

if [ -n "$A" ]; then
  sudo service edge-server stop
fi

java -jar "$INSTALL_SCRIPT_DIR/${app.subpath}-${app.version}-standard.jar"

. /etc/rsna.conf
export RSNA_ROOT

mkdir -p $CTP_DIR &&
cp -v $INSTALL_SCRIPT_DIR/ISN-installer.jar $CTP_DIR &&
cd $CTP_DIR &&
java -jar ISN-installer.jar &&
chown -R edge:edge $CTP_DIR

sudo service edge-server start

