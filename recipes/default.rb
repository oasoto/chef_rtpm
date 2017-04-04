#
# Cookbook:: myapp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'apt::default'
include_recipe 'ntp::default'
include_recipe 'myapp::firewall'
include_recipe 'myapp::image'
