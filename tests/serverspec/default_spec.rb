require "spec_helper"
require "serverspec"

hosts_file = "/etc/hosts"
extra_localhosts = ["localhost1", "localhost2", "buz.example.org"]

describe file(hosts_file) do
  it { should be_file }
  its(:content) { should match(/192\.168\.100\.1\s+foo/) }
  its(:content) { should match(/192\.168\.100\.2\s+bar\s+buz/) }
  its(:content) { should match(/127\.0\.0\.1\s+#{Regexp.escape(extra_localhosts.join(" "))}\s+localhost$/) }
  its(:content) { should match(/::1\s+ip6-localhost\sip6-loopback/) }
end

describe command("ping -c 1 localhost") do
  its(:exit_status) { should eq 0 }
end

extra_localhosts.each do |h|
  describe command("ping -c 1 #{h}") do
    its(:exit_status) { should eq 0 }
  end
end
