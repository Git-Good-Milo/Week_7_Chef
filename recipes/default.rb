#
# Cookbook:: node_2
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Install nginx
apt_package 'nginx'

# Enable and start nginx
service 'nginx' do
  action [ :enable, :start ]
end

# Install nodejs
# include_recipe "nodejs"
package 'nodejs' do
  action :install
end

# Enable and start nodejs
service 'nodejs' do
  action [ :enable, :start ]
end
