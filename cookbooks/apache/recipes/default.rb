#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#using node attributes (ohai)
if node['platform_family'] == "rhel"
  web_package = "httpd"
elsif node['platform_family'] == 'debian'
  web_package = "apache2"
end

package 'apache' do
  #using node attributes to set a variable
  package_name web_package
  action :install
end

service web_package do
  action [:enable, :start]
end
