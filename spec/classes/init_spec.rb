require 'spec_helper'
describe 'sysklogd' do

  describe 'when including class' do
    it {
      should contain_exec('remove sysklogd').with({
        'command' => 'rpm -e --nodeps sysklogd',
        'onlyif'  => 'rpm -q sysklogd',
        'path'    => '/bin:/usr/bin:/sbin:/usr/sbin',
      })
    }
  end
end
