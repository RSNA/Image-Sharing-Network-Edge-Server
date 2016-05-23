#! /bin/bash
#
# The purpose of this script is to monitor if the RSNA edge server is running properly. Specifically, it:
# 	1) checks if each of edge server's required services and/or sub-services is running;
# 	2) tests if database connections to the two database "rsnadb" and "mirthdb" are successful; 
# 	3) checks if the default usernames/passwords for the two databases "rsnadb" and "mirthdb" are unchenged.
# If any answer to the above mentioned questions is false, an email notification will be sent to recipient(s), 
# which is/are configured externally by the token app GUI.
#
# Author: Xiaojiang Yang, Mayo Clinic Rochester
# Date: Sep 24, 2013 - v1.0: First version using Linux's sendmail utility.
#	Jan 28, 2014 - v2.0: Changed to use Clifton's email sending utility.
#
#
# Whit is the IP address of this machine? You may need it in the email notification:
IP_ADDRESS=`/sbin/ifconfig | grep 'inet addr:' | grep -v '127.0.0.1' | cut -d: -f2 | awk '{print $1}'`
#

# A general property file parser function.
# Param: $1 propertyName
# Param: $2 fileName
# Return: string of the property value corresponding to the property name in the specific property file.
# Note: This function can be a good substitute for the function getPropertyFromFileOld(),
# Because the limitation that no spaces near equal (=) sign applied to the property file will be removed.
function getPropertyFromFile()
{
	while read line
	do
		case $line in  
		    "$1"*)  echo $line | sed 's/.*=[ ]*//' ;;
		    *) ;;  
		   esac  
	done < $2
}

# This function checks if the configured username/password for mirthdb and rsnadb can be used to connect to the db.
# Param: none.
# Return: 2-element array of string, each of which is "1" if successfull, "0" otherwise.
function checkDBConnection(){
	# Extract passwords from the edge server's configuration file:
	rsnadb_password=`getPropertyFromFile rsnadb.password $RSNA_ROOT/conf/database.properties`
	mirthdb_password=`getPropertyFromFile password /usr/local/mirthconnect/conf/postgres-SqlMapConfig.properties`

	# Generate a password file for auto-login used by psql. The content is based on those extracted from the edge server's configuration file.
	# !!!! Note: Do NOT add tabs before the following lines for file content of ~/.pgpass:!!!!
	cat > ~/.pgpass << EOF
127.0.0.1:5432:rsnadb:edge:$rsnadb_password
127.0.0.1:5432:mirthdb:mirth:$mirthdb_password
EOF
	# See http://www.postgresql.org/docs/8.1/static/libpq-pgpass.html for reason of the following:
	chmod 0600 ~/.pgpass

	if [ -z $rsnadb_password ]; then
		echo 0
	else
		psql -h 127.0.0.1 -U edge -d rsnadb -l | grep rsnadb | wc -l
	fi

	if [ -z $mirthdb_password ]; then
		echo 0
	else
		psql -h 127.0.0.1 -U mirth -d mirthdb -l | grep mirthdb | wc -l
	fi
}

# Make sure the following two configuration files have the exact content as follows:
# cat $RSNA_ROOT/conf/database.properties
# rsnadb.url=jdbc:postgresql://localhost:5432/rsnadb
# rsnadb.user=edge
# rsnadb.password=d17bK4#M
# cat /usr/local/mirthconnect/conf/postgres-SqlMapConfig.properties
# database=postgres
# driver=org.postgresql.Driver
# url=jdbc:postgresql://localhost:5432/mirthdb
# username=mirth
# password=1947JAT$
#
# This function will check if the database configuration is correct.
# Param: none.
# Return: empty, indicating no errors; Or a string, indicating errors found, which can be parsed to multi-line strings.
function checkDBConfig(){
	# Check rsnadb username/password:
	rsnadb_username=`getPropertyFromFile rsnadb.user $RSNA_ROOT/conf/database.properties`
	if [ -z $rsnadb_username ] || [ $rsnadb_username != "edge" ]; then
		echo "Usenmane for database \"rsnadb\" is incorrect (not the default), check the file $RSNA_ROOT/conf/database.properties."
	fi

	rsnadb_password=`getPropertyFromFile rsnadb.password $RSNA_ROOT/conf/database.properties`
	if [ -z $rsnadb_password ] || [ $rsnadb_password != "d17bK4#M" ]; then
		echo "Password for database \"rsnadb\" is incorrect (not the default), check the file $RSNA_ROOT/conf/database.properties."
	fi

	# Check mirthdb username/password:
	mirthdb_username=`getPropertyFromFile username /usr/local/mirthconnect/conf/postgres-SqlMapConfig.properties`
	if [ -z $mirthdb_username ] || [ $mirthdb_username != "mirth" ]; then
		echo "Usenmane for database \"mirthdb\" is incorrect (not the default), check the file /usr/local/mirthconnect/conf/postgres-SqlMapConfig.properties."
	fi

	mirthdb_password=`getPropertyFromFile password /usr/local/mirthconnect/conf/postgres-SqlMapConfig.properties`
	if [ -z $mirthdb_password ] || [ $mirthdb_password != "1947JAT$" ]; then
		echo "Password for database \"mirthdb\" is incorrect (not the default), check the file /usr/local/mirthconnect/conf/postgres-SqlMapConfig.properties."
	fi
}

# Add the first parameter ($1) to the mailContent string.
# param: $1: mail content string to be appended.
# return: value in global variable $mailContent.
#
# !!!Note: Do NOT add tab(s) before the follwing function!!!
function addToMailContent(){
mailContent=$(cat <<EOF
$mailContent
$1
EOF
)
}

#
#############################
## Start of the main program.
#############################
#
# Define some variables for mail sender:
mailContent="Some error(s) happened with your RSNA edge server."

#
#
# Define a list of commands needs to be run/tested:
commands[0]="ps aux | grep bin/postgres | wc | awk '{ print \$1 }'"
commands[1]="ps aux | grep libraries/CTP | wc | awk '{ print \$1 }'"
commands[2]="ps aux | grep torquebox | wc | awk '{ print \$1 }'"
commands[3]="ps aux | grep prep-content | wc | awk '{ print \$1 }'"
commands[4]="ps aux | grep transfer-content | wc | awk '{ print \$1 }'"
commands[5]="ps aux | grep MirthLauncher | wc | awk '{ print \$1 }'"

prompts[0]="Service \"postgresql-8.4.0\" is not running."
prompts[1]="Service \"ctpService\" is not running."
prompts[2]="Service \"edge-server: torquebox\" is not running."
prompts[3]="Service \"edge-server: prep-content\" is not running."
prompts[4]="Service \"edge-server: transfer-content\" is not running."
prompts[5]="Service \"edge-server: MirthLauncher\" is not running."

dbConnFailedPrompt[0]="Testing connection to database \"rsnadb\" failed."
dbConnFailedPrompt[1]="Testing connection to database \"mirthdb\" failed."
dbConnSucceededPrompt[0]="Testing connection to database \"rsnadb\" succeeded."
dbConnSucceededPrompt[1]="Testing connection to database \"mirthdb\" succeeded."

# Run each command in the array TWICE, and expect getting "2" (more loosly, at least 2):
bAllServiceRunning=true
for (( i=0; i<${#commands[@]}; i++ ))
do
# We check 2 times for each service - if both 2 times are errors, then we say it's a error:
	ret1=`eval ${commands[$i]}`
	sleep 1s
	ret2=`eval ${commands[$i]}`
	if (( $ret1 < 2 && $ret2 < 2 )); then
		results[$i]=false
		bAllServiceRunning=false
	else
		results[$i]=true
	fi
done

# Output services checking results:
addToMailContent " "
addToMailContent "Checking results for all required services:"
addToMailContent "===================="
if [ $bAllServiceRunning == true ] ; then
	echo "All required services are running!"
	addToMailContent "All required services are running!" 
else
	echo "Here are the problem(s) I found:"
	for (( j=0; j<${#prompts[@]}; j++ ))
	do
		if [ ${results[$j]} == false ]; then
			echo ${results[$j]} : ${prompts[$j]}
			addToMailContent "${prompts[$j]}"
		else
			echo ${results[$j]}
		fi
	done
fi


# Even if we found all required services are running, we still do a DB connectivity and config check:
#
# Do the DB connectivity checking:
bDBConnectionTestSuccess=true
dbConnResults=`checkDBConnection`
echo -e "\nDB connectivity testing result(s):"
addToMailContent " "
addToMailContent "DB connectivity testing result(s):"
addToMailContent "===================="
#
# Output the DB connectivity checking results:
dbConnResultsArr=()
while read -r line; do
   dbConnResultsArr+=("$line")
done <<< "$dbConnResults"
for (( j=0; j<${#dbConnResultsArr[@]}; j++ ))
do
	if [ -z ${dbConnResultsArr[$j]} ] || [ ${dbConnResultsArr[$j]} == "0" ]; then
		echo ${dbConnFailedPrompt[$j]}
		addToMailContent "${dbConnFailedPrompt[$j]}"
		bDBConnectionTestSuccess=false
	else
		echo ${dbConnSucceededPrompt[$j]}
		addToMailContent "${dbConnSucceededPrompt[$j]}"
	fi
done
# End of the outputing the DB connectivity checking results.


# Do the DB config checking:
bDBConfigCheckSuccess=true
dbConfigResults=`checkDBConfig`
echo -e "\nDaignosed Reason(s):"
addToMailContent " "
addToMailContent "Daignosed Reason(s):"
addToMailContent "===================="

# Output the diagnosis line by line:
dbConfigResultsArr=()
while read -r line; do
   dbConfigResultsArr+=("$line")
done <<< "$dbConfigResults"
if [ ${#dbConfigResultsArr[@]} > 0 ] && [ ! -z "${dbConfigResultsArr[0]}" ]; then
#if [ ${#dbConfigResultsArr[@]} -gt 0 ] && [ ! -z ${dbConfigResultsArr[0]} ]; then
	for (( j=0; j<${#dbConfigResultsArr[@]}; j++ ))
	do
		echo ${dbConfigResultsArr[$j]}
		addToMailContent "${dbConfigResultsArr[$j]}"
	done
	bDBConfigCheckSuccess=false
else
	echo "No reason found."
	addToMailContent "No reason found."
fi
echo ""
# End of outputing the diagnosis.


# Now send email notification to the configured recipients, if any of the variable is false: bAllServiceRunning, bDBConnectionTestSuccess, bDBConfigCheckSuccess:
if [ $bAllServiceRunning == false ] || [ $bDBConnectionTestSuccess == false ] || [ $bDBConfigCheckSuccess == false ]; then
	# Send email notification to recipient(s):
	MAIL_SUBJECT="RSNA Edge Server Failure Notification - `date`"
	addToMailContent " "
	addToMailContent "--------------------"
	addToMailContent "This email was sent to you by the RSNA edge server monitor script. You received this email because your email address was configured in a RSNA edge server as a recipient of this kind of notifications."
	if [ -z $JAVA_HOME ]; then
		java=$(which java)
		if [ -z $java ]; then 
			echo "You have not installed Java - Please install Java!";
			exit 1;
		fi
	else
		java=$JAVA_HOME/bin/java
	fi

	ret=`$java -jar $RSNA_ROOT/sendemail-isn-1.0.jar "$MAIL_SUBJECT" "$mailContent"`
	echo "An email notification has been sent to the configured recipient(s)."
fi
## End of the main program.

