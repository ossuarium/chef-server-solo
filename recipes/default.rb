#
# Cookbook Name:: server-solo
# Recipe:: default
#

#
# Configuration for sudo.
#

node.default['authorization']['sudo']['users'] = []
node.default['authorization']['sudo']['groups'] = ['sysadmin']
node.default['authorization']['sudo']['passwordless'] = true
node.default['authorization']['sudo']['include_sudoers_d'] = true

#
# Configuration for sshd.
#

node.default['openssh']['server']['password_authentication'] = 'no'
node.default['openssh']['server']['challenge_response_authentication'] = 'no'
node.default['openssh']['server']['permit_root_login'] = 'no'
node.default['openssh']['server']['t_c_p_keep_alive'] = 'yes'

#
# Include common recipes.
#

include_recipe 'annoyances::default'
include_recipe 'users::default'
include_recipe 'users::sysadmins'
include_recipe 'apt::default' if platform_family? 'debian'
include_recipe 'logrotate::default'
include_recipe 'ntp::default'
include_recipe 'timezone-ii::default'
include_recipe 'sudo::default'
include_recipe 'openssh::default'
include_recipe 'firewall::default'
include_recipe 'chef-server::default'

#
# Enable firewall and allow ssh and http/https.
#

firewall 'ufw' do
  action :nothing
end

firewall_rule 'ssh' do
  port 22
  action :allow
  notifies :enable, 'firewall[ufw]'
end

# This is required to enable rate limiting for ssh.
# @todo Replace this when rate limiting is supported by the firewall cookbook.
execute 'ufw limit ssh/tcp' do
  action :run
  not_if 'ufw status | grep LIMIT'
end

firewall_rule 'https' do
  protocol :tcp
  ports [80, 443]
  action :allow
end
