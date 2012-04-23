#!/bin/bash

echo "executing retrieve-prep.sh"

UPGRADE=$1

echo "UPGRADE is $UPGRADE"

if [ "$UPGRADE" == '0' ]; then
  mkdir $INSTALL_PATH/images
  mkdir $INSTALL_PATH/report
  mkdir $INSTALL_PATH/temp

  touch $INSTALL_PATH/logs/retrieve-content.log

  chown -R edge:edge $INSTALL_PATH

  chmod 777 $INSTALL_PATH/images
  chmod 777 $INSTALL_PATH/report
  chmod 777 $INSTALL_PATH/temp
  chmod 777 $INSTALL_PATH/logs/retrieve-content.log

  exit 0
fi

echo "completing retrieve-prep.sh"

