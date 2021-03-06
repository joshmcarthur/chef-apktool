name             'apktool'
maintainer       'Joshua McArthur'
maintainer_email 'joshua.mcarthur@gmail.com'
license          'MIT License'
description      'Installs/Configures apktool'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.4'

%w( debian ubuntu centos fedora mac_os_x ).each do |os|
  supports os
end

depends "apt"
depends "java"
