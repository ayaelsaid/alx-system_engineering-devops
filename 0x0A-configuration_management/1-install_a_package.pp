# Using Puppet, install flask from pip3
package { 'python3':
  ensure => present,
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
