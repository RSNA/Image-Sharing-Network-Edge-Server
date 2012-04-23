#!/bin/bash
echo "executing edge-db-install.sh"

export PGPASSWORD=$DBSUPERPASSWD
DBHOST=$1
DBPORT=$2
SUPERUSER=$3
SQLFILE=$4
TMPPATH=$5
UPGFILE=$6
UPGRADE=$7

CURVERSION=`/usr/bin/env psql -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb -At -c "SELECT version FROM schema_version ORDER BY modified_date DESC LIMIT 1"`

echo "UPGRADE is $UPGRADE"

if [ "$UPGRADE" == '1' ] && [ "$CURVERSION" != "2.1.0" ]; then # upgrade from previous version
  echo "updating schema"
  /usr/bin/env psql -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb < $UPGFILE
  exit 0
fi

if [ "$UPGRADE" == '0' ]; then
  /usr/bin/env dropuser -w -h $DBHOST -p $DBPORT -U $SUPERUSER edge
  /usr/bin/env dropdb -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb
  echo "creating edge user"
  /usr/bin/env psql -w -h $DBHOST -p $DBPORT -U $SUPERUSER postgres -c "CREATE ROLE edge WITH NOSUPERUSER NOCREATEDB NOCREATEROLE LOGIN ENCRYPTED PASSWORD '$DBPASSWD'" &&
  echo "creating rsnadb database, ignore 'does not exist' errors"
  /usr/bin/env createdb -w -h $DBHOST -p $DBPORT -U $SUPERUSER  -O edge rsnadb &&
  /usr/bin/env psql -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb < $SQLFILE &&
  echo "creating admin user to web interface, default password is 'changeme'"
  /usr/bin/env psql -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb <<EOF
INSERT INTO users (user_login, user_name, email, crypted_password, salt, created_at, updated_at, role_id, modified_date)
VALUES ('admin','Admin User','admin@example.com','bf5f41c22dc80df8ac01d7d8ab59ac904c3cc495','7335cc4d576fc77fecfdf0d986396c86904b3518',now(),now(),2,now());
INSERT INTO configurations (key, value, modified_date) values ('tmp-dir-path','$TMPPATH', now());
EOF
  exit 0
fi

echo "completing edge-db-install.sh"

