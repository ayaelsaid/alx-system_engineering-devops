# Using Puppet, create a manifest that kills a process named killmenow.
class kill_process {

  exec { 'kill_killmenow':
    command => '/bin/pkill killmenow',
    refreshonly => true, 
  }
}
