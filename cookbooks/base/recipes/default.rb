#
# Cookbook:: base
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tree' do
  action [:install]
end

package 'apache' do
  package_name 'httpd'
  action :install
end

service 'httpd' do
  action [:enable, :start]
end

