name "demo_app"
description "Very simple web app"
run_list(
  "role[base]",
  "recipe[apache2]",
  "recipe[my_app]"
)
