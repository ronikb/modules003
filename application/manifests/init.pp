# This is a core file of application module

class application {
	include application::gitclone_db, application::gitclone_app, application::dbcreate, application::dbrestore, application::symlink, application::apache2_config, application::php_memory
}
