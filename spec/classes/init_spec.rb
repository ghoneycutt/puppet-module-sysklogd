require 'spec_helper'
describe 'sysklogd' do

  it { should compile.with_all_deps }

  describe 'when including class' do

    it { should contain_class('sysklogd') }

    it {
      should contain_exec('remove sysklogd').with({
        'command' => 'rpm -e --nodeps sysklogd',
        'onlyif'  => 'rpm -q sysklogd',
        'path'    => '/bin:/usr/bin:/sbin:/usr/sbin',
      })
    }
  end
end
