require 'spec_helper'

describe 'chef-server-solo::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
end
