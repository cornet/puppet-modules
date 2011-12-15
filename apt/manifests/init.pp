# apt.pp

class apt {
  $root = '/etc/apt'
  $provider = '/usr/bin/apt-get'

  package { 'python-software-properties': }

  file { 'sources.list':
    ensure => present,
    name   => "${root}/sources.list",
    owner  => root,
    group  => root,
    mode   => '0644',
  }

  file { 'sources.list.d':
    ensure => directory,
    name   => "${root}/sources.list.d",
    owner  => root,
    group  => root,
  }

  exec { 'apt_update':
    command     => "${provider} update",
    subscribe   => [ File['sources.list'], File['sources.list.d'] ],
    refreshonly => true,
  }
}
