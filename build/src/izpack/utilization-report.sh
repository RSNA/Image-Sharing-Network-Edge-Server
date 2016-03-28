#!/bin/bash

################################################
# Author: Clifton Li 4/1/2015
# Purpose: service tool for utlilization-report*.jar
#
# Usage: utlilization-report.sh [--install|--test]
#	--install) Installs cron job by writing to /etc/cron.d/edge-cron.
#	--test) Tests connection to Google docs using conf/gdoc.propertes.
#
###################################################

USER=edge
CRONFILE='/etc/cron.d/edge-cron'
CRONJOB='0 0 * * 0 edge $JAVA_HOME/bin/java -jar $RSNA_ROOT/utilization-report*.jar > /dev/null 2>&1'

# Check appropriate number of arguments are given
if [ $# -gt 1 ]
then
	echo "Usage: $0 [--test|--install]"
    exit
fi

if [ "$1" = "--install" ] ; then

	if [ -f  $CRONFILE ] ; then
		#append job to file if it doesn't exist
    	if ! grep --quiet utilization-report[*].jar $CRONFILE ; then
      		echo "$CRONJOB" >> $CRONFILE
		fi
	else
		#create cron file
    	echo "$CRONJOB" >> $CRONFILE
	fi

 	echo "Done"

elif [ "$1" = "--test" ] ; then
	su $USER -c 'java -cp $RSNA_ROOT/utilization-report*.jar org.rsna.isn.utilizationreport.util.TestConnection'

elif [ $# -eq 0 ] ; then
	su $USER -c 'java -jar $RSNA_ROOT/utilization-report*.jar'

else
	echo "Usage: $0 [--test|--install]"

fi
