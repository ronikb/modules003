#This will edit apache configuration files
# TODO: make linux distro-independent (works only on Ubuntu/Debian now)
class application::apache2_config {
# This will edit default apache2 conf file
	exec { "edit-apache2-conf-file":
		command => "sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/sites-available/default",
        require => Package["apache2"]
}
#This will edit default DocumentRoot path
	exec { "edit-documentRoot-folder-path":
        command => "/etc/puppet/modules/application/scripts/edit-documentRoot-folder-path.sh $application_apache_default_documentroot $application_apache_current_documentroot",
        require => Package["apache2"]
}
}

