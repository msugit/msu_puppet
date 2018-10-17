# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  #source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  source => '/examples/puppet-beginners-guide-3/examples/files/reverse linux',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}
