class sudo::install {
  package {
    'sudo': ensure => installed
  }
}

class sudo::config {
  file {
    '/etc/sudoers' :
      owner  => root,
      group  => root,
      mode   => '0440',
      source => 'puppet:///modules/sudo/sudoers'
  }
}

class sudo {
  include sudo::install, sudo::config;
}
