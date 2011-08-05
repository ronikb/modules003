# This will change php memory limit
# TODO: make linux distro-independent (works only on Ubuntu/Debian now)

class application::php_memory {
        exec { "increase-php-memory-limit":
			command => "sed -i 's/memory_limit = .*/memory_limit = $application_php_memory_limit/' /etc/php5/apache2/php.ini",
        	require => Package["php5"]
}
}
