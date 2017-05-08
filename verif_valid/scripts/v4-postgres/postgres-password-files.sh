#!/bin/sh

sudo vi \
 $RSNA_ROOT/torquebox-3.1.2/jboss/standalone/configuration/standalone.xml \
 $RSNA_ROOT/Mirth\ Backup.xml \
 $RSNA_ROOT/monitor-scripts/edgeserver_monitor.sh \
 /usr/local/mirthconnect/conf/mirth.properties \
 $RSNA_ROOT/monitor-scripts/edgeserver_monitor.sh
