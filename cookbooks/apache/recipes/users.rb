group 'developers'

user 'webadmin' do
  action :create 
  uid '1020'
  gid 'developers'
  home '/home/webadmin'
  shell '/bin/bash'
end
