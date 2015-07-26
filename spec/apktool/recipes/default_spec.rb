require 'spec_helper'

describe 'apktool::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'downloads APKTool helper script' do
    expect(chef_run).to create_remote_file('/usr/local/bin/apktool').with(mode: '0755')
  end

  it 'downloads and extracts the APK JAR file' do
    expect(chef_run).to create_remote_file('/usr/local/bin/apktool.jar').with(mode: '0755')
  end
end
