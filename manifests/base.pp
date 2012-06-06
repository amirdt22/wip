group { "puppet":
  ensure => "present",
}

File { owner => 0, group => 0, mode => 0644 }

file { '/etc/motd':
  content => "Welcome to your Vagrant-built virtual machine!
              Managed by Puppet.\n"
}

class apache {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }

  package { "apache2":
    ensure => present,
  }

  service { "apache2":
    ensure => running,
    require => Package["apache2"],
  }
}

class java {
  package { "openjdk-6-jre-headless":
    ensure => present,
  }
}

class postgresql {
  package { "postgresql":
    ensure => present,
  }
  service { "postgresql":
    ensure => running,
    require => Package["postgresql"],
  }
}

include apache
include java
include postgresql
