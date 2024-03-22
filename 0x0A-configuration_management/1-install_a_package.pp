# Using Puppet, install flask from pip3
# Ensure Python 3 is installed
package { 'python3':
  ensure => present,
}

exec { 'flask_installed':
  command => 'pip3 list | grep -q Flask',
  path    => '/usr/bin',
  require => Package['python3'],
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Exec['flask_installed'],
}
