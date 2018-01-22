#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

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
