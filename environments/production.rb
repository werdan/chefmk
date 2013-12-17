name "production"

cookbook "webserver", "= 0.1.0"

default_attributes 'webserver' => {
	'revision' => 'master'
}