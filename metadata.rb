name             'multicorn'
maintainer       'Zach Schneider'
maintainer_email 'zach@schneid.io'
license          'MIT'
description      'Installs the Multicorn Postgres extension'
version          '1.0.2'

recipe 'multicorn', 'Installs Multicorn'

depends          'postgresql'
depends          'zip'

supports 'ubuntu'
supports 'redhat'
supports 'centos'
