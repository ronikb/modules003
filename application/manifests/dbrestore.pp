#This will restore MySql database 
class application::dbrestore {
	exec { "db-restore":
		command =>"/etc/puppet/modules/application/scripts/mysql-db-restore.sh $application_mysql_dbname $application_mysql_dump_location_for_dbrestore",
		require => Class["application::dbcreate"],
}
}

