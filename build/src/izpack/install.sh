#!/bin/bash

A=$(ps aux | grep [e]dgeserver | awk '{print $2}')

if [ "$A" != "" ]; then
  sudo service edge-server stop
fi

java -jar edgeserver-2.1.0-standard.jar

sudo service edge-server start

