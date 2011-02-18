#!/bin/sh
DBUSER=$1
DBHOST=$2
DBPORT=$3

id -u edge 2>&1 /dev/null
if [ "$?" -ne "0" ]; then
    useradd --system edge -d $INSTALL_PATH
fi
cp -v $INSTALL_PATH/scripts/domain.xml $INSTALL_PATH/glassfishv3/glassfish/domains/domain1/config

chown -R $INSTALL_PATH/glassfishv3 edge
chmod -R +x $INSTALL_PATH/glassfishv3/bin
chmod -R +x $INSTALL_PATH/glassfishv3/glassfish/bin

su edge -l -c $INSTALL_PATH/glassfishv3/bin/asadmin start-domain domain1 &&
su edge -l -c $INSTALL_PATH/glassfishv3/bin/asadmin create-jdbc-connection-pool --datasourceclassname org.postgresql.ds.PGConnectionPoolDataSource --restype javax.sql.ConnectionPoolDataSource --property "User=$DBUSER:Password=$DBPASS:ServerName=$DBHOST:PortNumber=$DBPORT" rsnadb &&
su edge -l -c $INSTALL_PATH/glassfishv3/bin/asadmin create-jdbc-resource --connectionpoolid rsnadb jdbc/rsnadb &&
su edge -l -c $INSTALL_PATH/glassfishv3/bin/asadmin deploy --contextroot "/" $INSTALL_PATH/token-app.war

