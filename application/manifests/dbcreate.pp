# This will create MySql database 

class application::dbcreate {
	exec { "db-create":
		command =>"/etc/puppet/modules/application/scripts/mysql-db-create.sh $application_mysql_dbname",
		require => Service["mysql"]
}
}
