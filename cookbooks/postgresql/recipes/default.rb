#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgresql-server' do
  #once installed it will notify to execute the postgresql-init command
  notifies :run, 'execute[postgresql-init]', :immediately
end

execute 'postgresql-init' do
  command 'postgresql-setup initdb'
  action :nothing
end

service 'postgresql' do
  action [:enable, :start]
end
