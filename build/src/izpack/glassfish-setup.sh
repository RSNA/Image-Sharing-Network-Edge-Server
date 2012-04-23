#!/bin/bash
echo "executing glassfish-setup.sh"
DBUSER=edge
DBHOST=$1
DBPORT=$2
UPGRADE=$3

export AS_JAVA=$JAVA_HOME

echo "UPGRADE is $UPGRADE"

if [ "$UPGRADE" == '0' ]; then

  userdel edge 2>&1

  id -u edge > /dev/null 2>&1
  if [ "$?" -eq "1" ]; then
      useradd --system edge -d $INSTALL_PATH
  fi

fi

cp -v $INSTALL_PATH/scripts/domain.xml $INSTALL_PATH/glassfishv3/glassfish/domains/domain1/config
mkdir -p $INSTALL_PATH/glassfishv3/glassfish/domains/domain1/lib &&
cp -v $INSTALL_PATH/ext/postgresql-*.jar $INSTALL_PATH/glassfishv3/glassfish/domains/domain1/lib &&

mkdir -p $INSTALL_PATH/logs &&
mkdir -p $INSTALL_PATH/tmp &&
chown -R edge:edge $INSTALL_PATH &&
chmod -R +x $INSTALL_PATH/glassfishv3/bin &&
chmod -R +x $INSTALL_PATH/glassfishv3/glassfish/bin &&

su edge -l -c "mkdir -p $INSTALL_PATH/glassfishv3/glassfish/lib/asadmin"
su edge -l -c "$INSTALL_PATH/glassfishv3/bin/asadmin start-domain domain1" &&
su edge -l -c "$INSTALL_PATH/glassfishv3/bin/asadmin create-jdbc-connection-pool --datasourceclassname org.postgresql.ds.PGConnectionPoolDataSource --restype javax.sql.ConnectionPoolDataSource --property 'User=$DBUSER:Password=$DBPASS:ServerName=$DBHOST:PortNumber=$DBPORT:DatabaseName=rsnadb' rsnadb" &&
su edge -l -c "$INSTALL_PATH/glassfishv3/bin/asadmin create-jdbc-resource --connectionpoolid rsnadb jdbc/rsnadb" &&
su edge -l -c "$INSTALL_PATH/glassfishv3/bin/asadmin deploy --contextroot '/' $INSTALL_PATH/token-app.war" &&
su edge -l -c "$INSTALL_PATH/glassfishv3/bin/asadmin stop-domain domain1"
echo "completing glassfish-setup.sh"

