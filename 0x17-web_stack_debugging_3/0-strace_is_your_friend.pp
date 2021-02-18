# Using strace, find out why Apache is returning a 500 error.
# Once you find the issue, fix it and then automate it using Puppet
# (web debugging) 
exec { 'fix-wordpress':
  environment => ['DIR=/var/www/html/wp-settings.php',
                  'OLD=phpp',
                  'NEW=php'],
  command     => 'sudo sed -i "s/$OLD/$NEW/" $DIR',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1]
}
