class apache::install {
  package {
    'apache2': ensure => latest;
  }
}

class apache::config {
  File {
        require => Class['apache::install'],
        notify  => Class['apache::service'],
  }
}

class apache::service {
  service {
    'apache2':
      ensure  => running,
      enable  => true,
      require => Class['apache::config'];
  }
}

class apache {
  include apache::install, apache::config, apache::service
}
