#
# Cookbook Name:: apktool
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"

remote_file '/usr/local/bin/apktool' do
  source 'https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool'
  mode 755
  action :create
end

remote_file '/usr/local/bin/apktool.jar' do
  source 'https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.0.1.jar'
  mode 755
  action :create
end
