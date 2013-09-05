name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[chef-client::cron]",
  "recipe[chef-client::delete_validation]",
  "recipe[apt]",
  "recipe[nagios::client]",
  "recipe[custom_monitors::base_monitoring]"
)

default_attributes(
  "chef_client" => {
    "cron" => {
      "minute" => "*/15",
      "hour" => "*",
      "log_file" => "/var/log/chef/client.log"
    }
  },
  "nagios" => {
    "server_role" => "nagios"
  }
)
