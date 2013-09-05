name "haproxy"
description "HAProxy Role"
run_list(
  "role[base]",
  "recipe[chef-client::cron]",
  "recipe[haproxy::app_lb]"
)

default_attributes(
  "haproxy" => {
     "app_server_role" => "demo_app",
     "member_port" => "80",
     "admin" => {
       "address_bind" => "0.0.0.0"
     }
   },
  "chef_client" => {
    "cron" => {
      "minute" => "*/2",
      "hour" => "*"
    }
  }
)
