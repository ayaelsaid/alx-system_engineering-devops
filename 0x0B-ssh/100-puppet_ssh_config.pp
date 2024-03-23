# connect to a server without typing a password.
#include stdlib

file_line { 'Turn off passwd auth':
  ensure  => present,
  line    => 'PasswordAuthentication no',
  path    => '/etc/ssh/100-puppet_ssh_config',
  replace => true,
}

file_line { 'Declare identity file':
  ensure  => present,
  line    => 'IdentityFile ~/.ssh/school',
  path    => '/etc/ssh/100-puppet_ssh_config',
  replace => true,
}
