# Using Puppet, install flask from pip3
package { 'python3':
  ensure => present,
}

exec { 'flask_installed':
  command => 'pip3 list | grep Flask',
  path    => '/usr/bin',
  unless  => 'pip3 list | grep -q Flask',
  require => Package['python3'],
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Exec['flask_installed'],
}

package { 'Werkzeug':
  ensure  => '2.1.1',
  require => Package['Flask'],
}
