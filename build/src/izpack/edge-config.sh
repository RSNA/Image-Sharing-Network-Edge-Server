#!/bin/bash

. /etc/rsna.conf
SSOADM=$RSNA_ROOT/ssoadm/openam/ssoadm

TITLE="Server Configuration"

SERVER_HOST=$(whiptail --title "$TITLE" --inputbox "Enter server fully qualified domain name." 9 50 "$(hostname -f)" 3>&1 1>&2 2>&3)
COOKIE_DOMAIN=$(whiptail --title "$TITLE" --inputbox "Enter Login Cookie Domain.\n\nExample: .example.com or host.example.com" 10 50 3>&1 1>&2 2>&3)
OPENAMPWD=$(whiptail --title "$TITLE" --passwordbox "Set OpenAM amAdmin user passsword." 9 50 3>&1 1>&2 2>&3)
OPENAMPWDCONFIRM=$(whiptail --title "$TITLE" --passwordbox "Confirm OpenAM amAdmin user passsword." 9 50 3>&1 1>&2 2>&3)
if [[ "x$OPENAMPWD" != "x$OPENAMPWDCONFIRM" ]]; then
    whiptail --title "$TITLE" --msgbox "Passwords do not match, exiting." 9 50
    exit 1;
fi
unset OPENAMPWDCONFIRM

echo $OPENAMPWD > $RSNA_ROOT/conf/ampwd.txt
chmod 400 $RSNA_ROOT/conf/ampwd.txt
chown edge $RSNA_ROOT/conf/ampwd.txt

sed -i -e '/ADMIN_PWD=/d' -e '/ADMIN_CONFIRM_PWD=/d' -e '/SERVER_URL=/d' -e '/COOKIE_DOMAIN=/d' $RSNA_ROOT/scripts/openam.config
sed -i -e "1i ADMIN_PWD=$OPENAMPWD" -e "1i ADMIN_CONFIRM_PWD=$OPENAMPWD" -e "1i SERVER_URL=http://$SERVER_HOST:3000" -e "1i COOKIE_DOMAIN=$COOKIE_DOMAIN" $RSNA_ROOT/scripts/openam.config

unset OPENAMPWD

echo "Running OpenAM configurator"
$JAVA_HOME/bin/java -jar $RSNA_ROOT/openam-configurator-tool-%{openam.version}.jar -f $RSNA_ROOT/scripts/openam.config || exit 1

cat <<EOF > /tmp/ssoadm.batch
update-server-cfg -s default -a com.iplanet.am.cookie.name=RSNA_SSO
set-svc-attrs -e / -s iPlanetAMAuthService -a iplanet-am-auth-login-success-url=/
create-identity -e / -t Group -i Admin
create-identity -e / -t Group -i Super
create-identity -e / -t Group -i Export
create-identity -e / -t Group -i Import
create-identity -e / -t Group -i Read
create-identity -e / -t User -i admin -a givenname=Admin sn=Admin userpassword=password
add-member -e / -t Group -i Admin -m admin -y User
add-member -e / -t Group -i Export -m admin -y User
add-member -e / -t Group -i Import -m admin -y User
add-member -e / -t Group -i Read -m admin -y User
delete-identities -e / -t User -i demo
delete-identities -e / -t User -i anonymous
EOF

$SSOADM do-batch -u amAdmin -f $RSNA_ROOT/conf/ampwd.txt -c -Z /tmp/ssoadm.batch

sed -i -e '/SECRET_KEY_BASE=/d' -e '/OPENAM_URL=/d' /etc/rsna.conf

echo OPENAM_URL=http://$SERVER_HOST:3000/openam >> /etc/rsna.conf
echo SECRET_KEY_BASE=$(dd if=/dev/urandom bs=1024 count=1 | sha512sum | awk '{print $1;}') >> /etc/rsna.conf

echo "Restarting edge-server process."
restart edge-server

echo "Setup Complete."
