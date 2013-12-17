case node['platform']
when 'ubuntu'
	default['apache']['log_level'] = 'warn'
else
	default['apache']['log_level'] = 'debug'
end

override['apache']['default_site_enabled'] = false
default['apache']['aliases'] = ['url1.com','url2.com','url3.com'] 

default['apache']['docroot_dir'] = "/var/www/current"

default['webserver']['revision'] = 'master'