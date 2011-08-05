#This will install mysql
# TODO: make linux distro-independent (works only on Ubuntu/Debian now)
class mysql::install {
	package { [ "mysql-server", "mysql-client" ]:
	ensure => present,
	require => User["mysql"],
}

	user { "mysql":
	ensure => present,
	comment => "MySQL user",
	gid => "mysql",
	shell => "/bin/false",
	require => Group["mysql"],
}

	group { "mysql":
	ensure => present,
}
	service { "mysql":
	ensure => running,
	hasstatus => true,
	hasrestart => true,
	require => Package ["mysql-server"]
}
}
