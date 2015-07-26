require 'spec_helper'

describe 'apktool::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'downloads APKTool helper script' do
    expect(chef_run).to create_remote_file('/usr/local/bin/apktool').with(mode: '0755')
  end

  it 'downloads and extracts the APK JAR file' do
    expect(chef_run).to create_remote_file('/usr/local/bin/apktool.jar').with(mode: '0755')
  end

  it 'downloads and extracts the APK with a specific version' do
    chef_run.node.set['apktool']['version'] = '2.0.0'
    chef_run.converge(described_recipe)
    
    expect(chef_run).to create_remote_file('/usr/local/bin/apktool.jar').with(
      source: "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.0.0.jar"
    )
  end
end
