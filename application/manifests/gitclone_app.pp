# This will execute git clone for application repository

class application::gitclone_app {        
	exec { "gitclone-application":
		command => "git clone $application_gitclone_application $application_gitclone_application_destination",
		require => Class ["application::gitclone_db"],
}
}



