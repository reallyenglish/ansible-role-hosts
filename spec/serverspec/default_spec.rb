require 'spec_helper'
require 'serverspec'

hosts_file = '/etc/hosts'

describe file(hosts_file) do
  it { should be_file }
  its(:content) { should match /192\.168\.100\.1\s+foo/ }
  its(:content) { should match /192\.168\.100\.2\s+bar\s+buz/ }
  its(:content) { should match /127\.0\.0\.1\s+localhost/ }
  its(:content) { should match /::1\s+ip6-localhost\sip6-loopback/ }
end
