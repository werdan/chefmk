name             'base_server'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures base_server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends "ntp"
depends "chef-client"
depends "cron"
depends "openssh"
depends "apt"
depends "hipchat"