#!/bin/bash
echo "executing torquebox-setup.sh"
DBUSER=edge
DBHOST=$1
DBPORT=$2
UPGRADE=$3

if [ "x$UPGRADE" != 'x1' ]; then
    useradd --system edge -s /bin/bash -d $INSTALL_PATH
fi

if grep -q SECRET_KEY_BASE /etc/rsna.conf ; then
    echo "SECRET_KEY_BASE is already set in /etc/rsna.conf"
else
    echo "Setting SECRET_KEY_BASE in /etc/rsna.conf"
    echo SECRET_KEY_BASE=$(dd if=/dev/urandom bs=1024 count=1 | sha512sum | awk '{print $1;}') >> /etc/rsna.conf
fi

echo OPENAM_URL=http://%{server.host}:3000/openam >> /etc/rsna.conf

. /etc/rsna.conf
TORQUEBOX_HOME=$INSTALL_PATH/torquebox-%{torquebox.version}
JBOSS_CLI=$TORQUEBOX_HOME/jboss/bin/jboss-cli.sh
POSTGRES_JAR=$(ls $INSTALL_PATH/ext/postgresql-*.jar)

mkdir -p $INSTALL_PATH/logs &&
mkdir -p $INSTALL_PATH/tmp &&
chown -R edge:edge $INSTALL_PATH &&

chmod +x $JBOSS_CLI &&
chmod +x $TORQUEBOX_HOME/jboss/bin/standalone.sh &&

edge_start_wait() {
    for i in {1..10}
    do
	if netstat -an46 | grep -q :9999 ; then
	    echo
	    echo "edge-server started."
	    break
	fi
	sleep 5
	echo -n "."
    done
}

wait_for_file() {
    for i in {1..10}
    do
	if [ -f "$1" ] ; then
	    break
	fi
	sleep 5
    done
}


start edge-server

echo
echo -n "waiting for edge-server to start."
edge_start_wait

if ! $JBOSS_CLI -c "ls /subsystem=datasources" 2>&1 > /dev/null ; then
    echo "Adding datasources subsystem..."
    $JBOSS_CLI -c "/subsystem=datasources:add"
    echo -n "Restarting edge-server."
    restart edge-server
    sleep 5
    edge_start_wait
fi

echo "Adding OpenAM Overlays"
$JBOSS_CLI -c "deployment-overlay add --name=OpenAMOverlay --content=/WEB-INF/classes/bootstrap.properties=$INSTALL_PATH/scripts/bootstrap.properties\,/WEB-INF/jboss-deployment-structure.xml=$INSTALL_PATH/scripts/jboss-deployment-structure.xml --deployments=openam.war"

$JBOSS_CLI -c "deployment-overlay add --name=AgentOverlay --content=/WEB-INF/jboss-deployment-structure.xml=$INSTALL_PATH/scripts/jboss-deploy-agent.xml --deployments=agentapp.war"

# FIXME if upgrade mod openam.war with token auth

echo "Deploying OpenAM war"
cp -v $INSTALL_PATH/openam-server-%{openam.version}.war $TORQUEBOX_HOME/jboss/standalone/deployments/openam.war &&
wait_for_file $TORQUEBOX_HOME/jboss/standalone/deployments/openam.war.deployed

echo "Running OpenAM configurator"
$JAVA_HOME/bin/java -jar $INSTALL_PATH/openam-configurator-tool-%{openam.version}.jar -f $INSTALL_PATH/scripts/openam.config 
echo %{openam.admin_pwd} > $INSTALL_PATH/conf/ampwd.txt
chmod 400 $INSTALL_PATH/conf/ampwd.txt
chown edge $INSTALL_PATH/conf/ampwd.txt 

AGENT_PWD=$(dd if=/dev/urandom bs=1024 count=1 | sha1sum | awk '{print $1;}')
echo $AGENT_PWD > $INSTALL_PATH/conf/amagentpwd.txt
chmod 400 $INSTALL_PATH/conf/amagentpwd.txt
chown edge $INSTALL_PATH/conf/amagentpwd.txt 

echo "Configuring ssoadm tool."
mkdir -p $INSTALL_PATH/ssoadm/openam
SSOADM=$INSTALL_PATH/ssoadm/openam/ssoadm

sed_e() {
    echo "s/@$1@/$(sed -e 's/[\/&]/\\&/g' <<<$2)/g"
}

sed -e "$(sed_e 'JAVA_HOME' "$JAVA_HOME")" \
    -e "$(sed_e 'CONFIG_DIR' "$INSTALL_PATH/openam-cfg")" \
    -e "$(sed_e 'TOOLS_HOME' "$INSTALL_PATH/ssoadm")" \
    -e "$(sed_e 'LOG_DIR' "$INSTALL_PATH/ssoadm/log")" \
    -e "$(sed_e 'DEBUG_DIR' "$INSTALL_PATH/ssoadm/debug")" \
    -e "$(sed_e 'AM_VERSION' "OpenAM %{openam.version}")" \
    < $INSTALL_PATH/ssoadm/template/unix/bin/ssoadm.template > $SSOADM

chmod +x $SSOADM

$SSOADM update-server-cfg -u amAdmin -f %{rsna.root}/conf/ampwd.txt -s default -a com.iplanet.am.cookie.name=RSNA_SSO
$SSOADM create-agent -u amAdmin -f %{rsna.root}/conf/ampwd.txt -e / -t J2EEAgent -b TorqueBoxAgent -s %{server.host}:3000/openam -g http://%{server.host}:3000/agentapp -v -a userpassword=$AGENT_PWD com.iplanet.am.cookie.name=RSNA_SSO

echo "Adding Postgres Module and DataSource"
$JBOSS_CLI -c "module add --name=org.postgres --resources=$POSTGRES_JAR --dependencies=javax.api\,javax.transaction.api"
$JBOSS_CLI -c '/subsystem=ee:write-attribute(name="global-modules",value=[{"name"=>"org.postgres","slot"=>"main"}])'
$JBOSS_CLI -c '/subsystem=datasources/jdbc-driver=postgres:add(driver-name="postgres",driver-module-name="org.postgres",driver-class-name=org.postgresql.Driver)'
$JBOSS_CLI -c "data-source add --jndi-name=java:/rsnadbDS --name=rsnadbPool --connection-url=jdbc:postgresql://$DBHOST:$DBPORT/rsnadb --driver-name=postgres --user-name=$DBUSER --password=$DBPASS"

echo "Stopping edge-server"
stop edge-server
echo "Installing OpenAM Agent."
AGENT_MOD=$INSTALL_PATH/j2ee_agents/jboss_v7_agent/config/module.xml
mv $AGENT_MOD $AGENT_MOD.old
cp -v $INSTALL_PATH/scripts/agent-module.xml $AGENT_MOD
chmod +x $INSTALL_PATH/j2ee_agents/jboss_v7_agent/bin/agentadmin
$INSTALL_PATH/j2ee_agents/jboss_v7_agent/bin/agentadmin --install --acceptLicense --useResponse $INSTALL_PATH/scripts/agent-res.txt

echo "Deploying TokenApp"
cp -v $INSTALL_PATH/token-app.knob $TORQUEBOX_HOME/jboss/standalone/deployments/token-app.knob

echo "completing torquebox-setup.sh"
