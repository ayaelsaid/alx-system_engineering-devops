# connect to a server without typing a password.

file { '/etc/ssh/100-puppet_ssh_config':
  ensure  => file,
  mode    => '0644',
  content => "Host *\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
}

file_line { 'Turn off passwd auth':
  ensure  => present,
  line    => 'PasswordAuthentication no',
  path    => '/etc/ssh/100-puppet_ssh_config',
  require => File['/etc/ssh/100-puppet_ssh_config'],
  replace => true,
}

file_line { 'Declare identity file':
  ensure  => present,
  line    => 'IdentityFile ~/.ssh/school',
  path    => '/etc/ssh/100-puppet_ssh_config',
  require => File['/etc/ssh/100-puppet_ssh_config'],
  replace => true,
}
