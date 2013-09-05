name "nagios"
description "Nagios Role"
run_list(
  "role[base]",
  "recipe[chef-client::cron]",
  "recipe[nagios::server]"
)

default_attributes(
  "chef_client" => {
    "cron" => {
      "minute" => "*/2",
      "hour" => "*"
    }
  },
  "nagios" => {
    "server_auth_method" => "htauth"
  }
)
