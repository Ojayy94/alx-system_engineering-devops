# Using Puppet, install flask from pip3.

# Requirements:

# Install flask
# Version must be 2.1.0

exec { 'install pip3':
  command => '/usr/bin/apt-get install -y pip3'
}

exec { 'install flask':
  command => '/usr/bin/pip3 install flask -v 2.1.0'
}

package { 'pip3':
  ensure => 'installed',
  before => Exec['install pip3']
}

package { 'flask':
  ensure   => 'installed',
  before  => Exec['install flask'],
  require => Package['pip3']
}
