{
  "name": "web",
  "description": "",
  "json_class": "Chef::Role",
  "default_attributes": {

  },
  "override_attributes": {

  },
  "chef_type": "role",
  "run_list": [
    "recipe[apache]",
    "recipe[apache::websites]",
    "recipe[apache::motd]"
  ],
  "env_run_lists": {

  }
}
