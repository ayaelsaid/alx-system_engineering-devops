# Using Puppet, install flask from pip3
exec { 'flask_installed':
  command => 'pip3 install flask==2.1.0',
  path    => '/usr/bin',
  unless  => 'pip3 list | grep -q Flask',
}
