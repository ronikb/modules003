#This will ensure mysql service is running
# TODO: make linux distro-independent (works only on Ubuntu/Debian now)
class mysql::service {
	service { "mysql":
	ensure => running,
	hasstatus => true,
	hasrestart => true,
	require => Class["mysql::install"],
}
}
