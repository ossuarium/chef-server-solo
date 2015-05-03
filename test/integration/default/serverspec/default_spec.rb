require 'spec_helper'

describe "server-solo::default" do
  describe command('ls -al /') do
    its(:stdout) { should match(/bin/) }
  end
end
