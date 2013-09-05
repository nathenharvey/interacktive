
## Web Servers

* `knife rackspace server create -N web01 -f 2 -I 1bbc5e56-ca2c-40a5-94b8-aa44822c3947 -r "role[demo_app]"`
* `knife rackspace server create -N web02 -f 2 -I 1bbc5e56-ca2c-40a5-94b8-aa44822c3947 -r "role[demo_app]"`
* `knife rackspace server create -N web03 -f 2 -I c6f9c411-e708-4952-91e5-62ded5ea4d3e -r "role[demo_app]"`

## HA Proxy

* `knife rackspace server create -N haproxy -f 2 -I 1bbc5e56-ca2c-40a5-94b8-aa44822c3947 -r "role[haproxy]"`

## Nagios

* `knife rackspace server create -N nagios -f 2 -I 1bbc5e56-ca2c-40a5-94b8-aa44822c3947 -r "role[nagios]"`

