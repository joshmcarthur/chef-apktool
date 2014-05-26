#
# Cookbook Name:: apktool
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"

ark 'apktool-helper' do
  url 'https://android-apktool.googlecode.com/files/apktool-install-linux-r05-ibot.tar.bz2'
end

ark 'apktool' do
  url 'https://android-apktool.googlecode.com/files/apktool1.5.2.tar.bz2'
end

link "/usr/local/bin/apktool" do
  to "/usr/local/apktool-helper/apktool"
end