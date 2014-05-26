#
# Cookbook Name:: apktool
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"

ark 'apktool' do
  url 'https://android-apktool.googlecode.com/files/apktool-install-linux-r05-ibot.tar.bz2'
  has_binaries ['apktool']
  creates "apktool"
  prefix_root '/opt'
  prefix_home '/opt'
end

ark 'apktool-jar' do
  url 'https://android-apktool.googlecode.com/files/apktool1.5.2.tar.bz2'
  creates "apktool.jar"
  path '/opt/apktool/'
  prefix_root '/opt'
  prefix_home '/opt'
end

link '/opt/apktool/apktool.jar' do
  to '/opt/apktool-jar/apktool.jar'
  action :create
end
