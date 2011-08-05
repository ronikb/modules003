#!/bin/sh 
#This will restore MySql database
mysql_password=
application_mysql_dbname=$1
application_mysql_dump_location_for_dbrestore=$2
mysql --user=root --password=$mysql_password  $application_mysql_dbname < $application_mysql_dump_location_for_dbrestore
echo Result: $?

