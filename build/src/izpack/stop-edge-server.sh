#!/bin/bash

sudo service edge-server stop
A=$(ps aux | grep [w]rapper-linux-x86-32 | awk '{print $2}')
if [ $A > 0 ]; then
  kill $A
fi

java -jar edgeserver-2.1.0-standard.jar

sudo service edge-server start

