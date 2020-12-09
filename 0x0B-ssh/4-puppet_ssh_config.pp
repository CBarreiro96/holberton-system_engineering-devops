# modify SSH config file
file_line { '/etc/ssh/ssh_config':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no'
  content  => "IdentityFile ~/.ssh/holberton
}