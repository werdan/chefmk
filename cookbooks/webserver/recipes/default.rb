#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

require 'pp'
pp node.debug_value('apache', 'default_site_enabled')

include_recipe "apache2"
include_recipe "apache2::mod_rewrite"

template "#{node['apache']['dir']}/sites-available/cvepatch" do
	owner    'root'
	group    node['apache']['root_group']
	mode     '0644'
	notifies :restart, 'service[apache2]'
end

apache_site 'cvepatch'

cookbook_file "#{node['apache']['dir']}/htpasswd" do
	owner 'root'
	group node['apache']['root_group']
	mode '0644'
	backup false
	# content "admin:$apr1$ejZO6aAi$9zUZFyNxkX7pHOfqnjs8/0"
end

file "#{node['apache']['dir']}/htpasswd" do
	action :delete
end

# search(:htpasswd, "nodes:#{node.name}") do |user|
# 	htpasswd "#{node['apache']['dir']}/htpasswd" do
# 		user user['id']
# 		password user['pass']
# 		notifies :reload, 'service[apache2]'
# 	end
# end

package "git"

application "my_app" do
   path "/var/www"
   repository "https://github.com/werdan/hpmor.git"
   revision node['webserver']['revision']
end
