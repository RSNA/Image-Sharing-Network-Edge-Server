#!/bin/bash
echo "executing edge-db-install.sh"

export PGPASSWORD=$DBSUPERPASSWD
DBHOST=$1
DBPORT=$2
SUPERUSER=$3
SQLFILE=$4
TMPPATH=$5
INSTALLER_DBVERSION=${6%-*}
UPGRADE=$7

CURVERSION=`/usr/bin/env psql -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb -At -c "SELECT version FROM schema_version ORDER BY modified_date DESC LIMIT 1"`

export PGOPTIONS='--client-min-messages=warning'

if [ "$UPGRADE" == "1" ] && [ "x$CURVERSION" != "x$INSTALLER_DBVERSION" ]; then # upgrade from previous version
    OLDIFS=$IFS
    IFS=$'\n'
    SQLUPDFILES=$(ls $INSTALL_PATH/RSNADB?rollout*.sql | sort | grep -A100 "$CURVERSION" | sed '/^--$/d' | tail -n +2)
    echo "updating schema" $SQLUPDFILES
    sed -e 's/\xef\xbb\xbf//g' $SQLUPDFILES | /usr/bin/env psql -v ON_ERROR_STOP=1 --pset pager=off -q -X -1 -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb || exit 1
    IFS=$OLDIFS
    exit 0
fi

if [ "x$UPGRADE" != 'x1' ]; then
  /usr/bin/env dropuser -w -h $DBHOST -p $DBPORT -U $SUPERUSER edge
  /usr/bin/env dropdb -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb
  echo "creating edge user"
  /usr/bin/env psql -v ON_ERROR_STOP=0 --pset pager=off -X -q -w -h $DBHOST -p $DBPORT -U $SUPERUSER postgres -c "CREATE ROLE edge WITH NOSUPERUSER NOCREATEDB NOCREATEROLE LOGIN ENCRYPTED PASSWORD '$DBPASSWD'" &&
  /usr/bin/env psql -v ON_ERROR_STOP=0 --pset pager=off -X -q -w -h $DBHOST -p $DBPORT -U $SUPERUSER postgres < $SQLFILE || exit 1
  /usr/bin/env psql -v ON_ERROR_STOP=0 --pset pager=off -X -q -w -h $DBHOST -p $DBPORT -U $SUPERUSER rsnadb <<EOF
INSERT INTO configurations (key, value, modified_date) values ('tmp-dir-path','$TMPPATH', now());
EOF
  exit 0
fi

echo "completing edge-db-install.sh"

