file '/etc/motd' do
  content "Hostname is this: #{node['platform_family']}"
end
