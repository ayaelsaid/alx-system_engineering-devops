# Using Puppet, install flask from pip3
package { 'python3-pip':
  ensure => present,
}

package { 'python3':
  ensure => present,
}

exec { 'install_flask':
  require => [Package['python3-pip'], Package['python3']],
  command => '/usr/bin/pip3 install -q flask==2.1.0',
  unless  => '/usr/bin/pip3 list | grep -q Flask==2.1.0', 
}
