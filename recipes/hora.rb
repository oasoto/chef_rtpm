#
# Cookbook:: myapp
# Recipe:: hora
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#name 'hora'
#description 'Role applied to the system that should be an NTP server.'
#default_attributes(
#  'ntp' => {
#    'servers'      => ['0.pool.ntp.org', '1.pool.ntp.org'],
#    'peers'        => ['time0.int.example.org', 'time1.int.example.org'],
#    'restrictions' => ['10.0.0.0 mask 255.0.0.0 nomodify notrap']
#  }
#)
servidores = ['0.pool.ntp.org', '1.pool.ntp.org']
pares = ['time0.int.example.org', 'time1.int.example.org']
restricciones = ['10.0.0.0 mask 255.0.0.0 nomodify notrap']

ntpd 'default' do
  servers servidores
  peers pares
  restrictions restricciones
  enabled true
end
