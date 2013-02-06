#!/bin/bash

A=$(ps aux | grep [e]dgeserver | awk '{print $2}')

if [ -n "$A" ]; then
  sudo service edge-server stop
fi

java -jar edgeserver-3.0.0-standard.jar
java -jar ISN-installer.jar

sudo service edge-server start

