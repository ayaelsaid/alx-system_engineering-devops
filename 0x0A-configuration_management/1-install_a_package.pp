# Using Puppet, install flask from pip3
package { 'python3':
  ensure => present,
}

exec { 'flask_installed':
  command => 'pip3 install flask==2.1.0',
  path    => '/usr/bin',
  unless  => 'pip3 list | grep -q Flask',
  require => Package['python3'],
}
