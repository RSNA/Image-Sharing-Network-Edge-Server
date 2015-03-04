#!/bin/bash

echo "executing mirth-setup.sh"

export PGPASSWORD=$DBSUPERPASSWD
DBHOST=$1
DBPORT=$2
DBNAME=$3
DBUSER=$4
SUPERUSER=$5
MIRTHROOT=$6
UPGRADE=$7

echo "UPGRADE is $UPGRADE"

if [ "x$UPGRADE" == 'x1' ] || [ -d $INSTALL_PATH/mirth ]; then
    echo "Patching Mirth 1.8.2..."
    $INSTALL_PATH/scripts/mirth-1.8.2-fix.sh "$MIRTHROOT"
    echo "Mirth database exists, skipping"
    exit 0
fi

echo "creating $DBUSER user"
/usr/bin/env psql -w -h $DBHOST -p $DBPORT -U $SUPERUSER postgres -c "CREATE ROLE $DBUSER WITH NOSUPERUSER NOCREATEDB NOCREATEROLE LOGIN ENCRYPTED PASSWORD '$DBPASSWD'" &&
echo "creating $DBNAME database"
/usr/bin/env createdb -w -h $DBHOST -p $DBPORT -U $SUPERUSER -O $DBUSER $DBNAME &&
export PGPASSWORD=$DBPASSWD
/usr/bin/psql -w -h $DBHOST -p $DBPORT -U $DBUSER $DBNAME < $MIRTHROOT/postgres-database.sql
cat > "$MIRTHROOT/conf/postgres-SqlMapConfig.properties" <<EOF
database=postgres
driver=org.postgresql.Driver
url=jdbc:postgresql://$DBHOST:$DBPORT/$DBNAME
username=$DBUSER
password=$DBPASSWD
EOF

sed 's/database=.*/database=postgres/' < $MIRTHROOT/conf/mirth.properties > $MIRTHROOT/conf/mirth.properties.new &&
mv $MIRTHROOT/conf/mirth.properties.new $MIRTHROOT/conf/mirth.properties

echo "Patching Mirth 1.8.2..."
$INSTALL_PATH/scripts/mirth-1.8.2-fix.sh "$MIRTHROOT"
