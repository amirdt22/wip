file { '/etc/motd':
  content => "Welcome to your Vagrant-built virtual machine!
              Managed by Puppet.\n"
}

file { '/etc/puppet/modules':
  ensure => link,
  target => '/vagrant/puppet/modules',
  force  => true,
}

file { '/var/lib/puppet/templates':
  ensure => link,
  target => '/vagrant/puppet/templates',
  force  => true,
}
