#This will install php5 in Ubuntu/Debian systems
# TODO: make linux distro-independent (works only on Ubuntu/Debian now)
class php::install {
	package { [ "php5","libapache2-mod-php5","php5-cli","php5-mysql","php5-gd" ]:
    ensure => installed,
}
}



