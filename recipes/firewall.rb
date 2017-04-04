#
# Cookbook:: myapp
# Recipe:: firewall
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#default['firewall']['allow_ssh'] = false

#ports = [22, 80]
#firewall_rule "open ports #{ports}" do
#  port ports
#end

#firewall_rule 'ssh' do
#  port     22
#  command  :allow
#end

# open standard http port to tcp traffic only; insert as first rule
#firewall_rule 'http' do
#  port     80
#  protocol :tcp
#  position 1
#  command   :allow
#end
include_recipe 'firewall::default'

puertos =[22, 80, 123]
firewall_rule "open ports #{puertos}" do
  port puertos
  command :allow
end

#firewall 'default' do
#  enabled true
#  action :nothing
#end
