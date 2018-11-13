describe os.name do
  it { should eq 'ubuntu' }
end

describe os.release do
  it { should eq '16.04' }
end

describe filesystem('/') do
  its('size') { should be >= 15000000 }
end

describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/var/lib/mysql') do
  it { should exist }
end

