# frozen_string_literal: true

require 'spec_helper'

describe 'jenkinsci' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_service('jenkins').with(
        ensure: 'running',
        enable: true,
      ) }
      it { is_expected.to contain_package('jenkins').with(
        ensure: 'installed',
      ) }
    end
  end
end
