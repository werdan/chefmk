#
# Cookbook Name:: base_server
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "chef-client"
include_recipe "chef-client::delete_validation"
include_recipe "chef-client::config"
include_recipe "ntp"
include_recipe "cron"
include_recipe "apt"
include_recipe "openssh"
include_recipe "hipchat"
