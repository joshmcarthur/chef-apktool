require 'spec_helper'

describe 'apktool::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'downloads and extracts APK helpers' do
    expect(chef_run).to download_and_extract_package 'apktool'
  end

  it 'downloads and extracts APK JAR file' do
    expect(chef_run).to download_and_extract_package 'apktool-jar'
  end

  it 'creates a symlink between the APK helpers and the JAR file' do
    expect(chef_run).to create_link '/opt/apktool/apktool.jar'
  end
end
