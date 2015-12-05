name             'multicorn'
maintainer       'Zach Schneider'
maintainer_email 'zach@schneid.io'
license          'MIT'
description      'Installs the multicorn Postgres extension'
version          '1.0.0'

recipe 'multicorn', 'Installs multicorn'

depends          'postgresql'
depends          'zip'

supports 'ubuntu'
supports 'redhat'
supports 'centos'
