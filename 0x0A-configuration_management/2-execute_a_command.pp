# Create a manifest that kills a process called "killmenow"
exec { 'pkill':
  command => 'pkill -x killmenow',
  path    => '/usr/bin/',
  returns => [0,1],
}