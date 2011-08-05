#This will ensure apache2 service is running in Ubuntu/Debian systems
# TODO: make linux distro-independent (works only on Ubuntu/Debian now)
class apache::service {
	service { "apache2":
	ensure => running,
	hasstatus => true,
	hasrestart => true,
	enable => true,
	require => Class["apache::install"],
}
}
