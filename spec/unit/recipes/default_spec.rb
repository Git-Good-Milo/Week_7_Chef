#
# Cookbook:: node_2
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'node_2::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '16.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'Should install nginx' do
      expect(chef_run).to install_package 'nginx'
    end


    it 'enables the nginx service' do
      expect(chef_run).to enable_service 'nginx'
    end

    it 'starts the nginx service' do
      expect(chef_run).to start_service 'nginx'
    end

    it 'should install nodejs from a recipe' do
      expect(chef_run).to include_recipe 'nodejs'
    end

    it 'should install pm2 from a recipe' do
      expect(chef_run).to install_package 'nodejs'
    end

  end
end
