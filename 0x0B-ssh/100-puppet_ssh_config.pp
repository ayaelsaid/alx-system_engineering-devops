# connect to a server without typing a password.

file { '/etc/ssh/100-puppet_ssh_config':
  ensure  => file,
  content => 'Host *\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n',
  mode    => '0644',
}
