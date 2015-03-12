#!/bin/bash

echo "executing version-cleanup.sh"

UPGRADE=$1

echo "UPGRADE is $UPGRADE"

if [ "$UPGRADE" == '0' ]
  then
    echo "Nothing to do. Skipping."
    exit 0
fi

rm $INSTALL_PATH/conf/scp.properties
find $INSTALL_PATH -maxdepth 1 -name core\*.jar | sort -n | head -n -1 | xargs -i mv {} {}.old
find $INSTALL_PATH -maxdepth 1 -name prep\*.jar | sort -n | head -n -1 | xargs -i mv {} {}.old
find $INSTALL_PATH -maxdepth 1 -name transfer\*.jar | sort -n | head -n -1 | xargs -i mv {} {}.old

echo "completing version-cleanup.sh"
