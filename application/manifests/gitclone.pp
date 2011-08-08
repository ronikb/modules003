# This will do application specific settings

class application::gitclonedb {        
	exec { "gitclone-db":
		command => "git clone $application_drupal_gitclone_db $application_drupal_gitclone_db_destination",
		timeout => 3600, 
        logoutput=> on_failure, 
		before => Exec ["db-restore"]
}
}
class application::gitcloneapp {
	exec { "gitclone-application":
		command => "git clone $application_drupal_gitclone_application $application_drupal_gitclone_application_destination",
		require => Exec ["gitclone-db"]
}
}
