class munin::install {
  package {
    'munin':      ensure => latest;
    'munin-node': ensure => latest;
  }
}

class munin::config {
  File {
    require => Class['munin::install'],
    notify  => Class['munin::service'],
    owner   => 'root',
    group   => 'root',
    mode    => 0640,
  }

  file {
    '/etc/apache2/conf.d/munin':
      source => 'puppet:///modules/munin/munin-apache.conf',
      notify => Class['apache::service'],
  }
}

class munin::service {
  service {
    'munin-node':
      ensure  => 'running',
      enable  => true,
      require => Class['munin::config'];
  }
}

class munin {
  include munin::install, munin::config, munin::service
}
