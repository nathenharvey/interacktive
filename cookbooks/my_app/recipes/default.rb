#
# Cookbook Name:: my_app
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "my_app::base_monitoring"

template "#{node['apache']['docroot_dir']}/index.html" do
  mode "0644"
  owner node['apache']['user']
  group node['apache']['group']
end
