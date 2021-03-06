#
# Cookbook:: base
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'net-tools' do
end

package 'tree' do
  action [:install]
end

package 'vim' do
end

#includes websites.rb
#include_recipe 'apache::websites'

#excuting a command
execute 'just a test' do
  command "echo hi >> /tmp/test.txt"
  action :run
end

#adding a user
user 'mfeng' do
  uid 2000
  shell '/bin/zsh'
  action :create
end 

file '/etc/motd' do
  content "The hostname: #{node['hostname']}"
end

#set journalling to permanent
#mkdir /var/log/journal
## echo "SystemMaxUse=50M" >> /etc/systemd/journald.conf
