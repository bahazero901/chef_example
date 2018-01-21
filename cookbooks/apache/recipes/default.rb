#
# Cookbook:: base
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tree' do
  action [:install]
end

#using node attributes (ohai)
if node['platform_family'] == "rhel"
  package = "httpd"
elsif node['platform_family'] == 'debian'
  package = "apache2"
end

package 'apache' do
  #using node attributes to set a variable
  package_name package
  action :install
end

service package do
  action [:enable, :start]
end

#includes websites.rb
#include_recipe 'apache::websites'

#excuting a command
execute 'just a test' do
  command "echo hi > /tmp/test.txt"
  action :run
end

#adding a user
user 'mfeng' do
  uid 2000
  shell '/bin/zsh'
  action :create
end 

