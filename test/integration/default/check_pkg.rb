
describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled }
  it { should be_running }
end

describe os.name do
  it { should eq 'ubuntu' }
end

describe os.release do
  it { should eq '16.04' }
end
