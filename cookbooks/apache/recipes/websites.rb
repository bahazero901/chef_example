template '/var/www/html/index.html' do
  cookbook 'lcd_web'
  source 'index.html.erb'
  owner 'apache'
  group 'apache'
  variables(
    greeting_scope: node['greeting_scope'],
    greeting: node['greeting'],
    fqdn: node['fqdn']
  )
end


#Using search
webnodes = search('node', 'role:web')

webnodes.each do |node|
  puts node
end
