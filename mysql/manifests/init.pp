class mysql::install {

  package {
    # We don't want mysql randomly upgrading
    'mysql-server': ensure => installed;
    'mysql-client': ensure => installed;

    # Useful utils
    'maatkit': ensure => latest;
  }

}

class mysql::service {
  service {
    'mysql':
      ensure  => running,
      enable  => true,
      require => Class['mysql::install'];
  }
}

class mysql {
  include mysql::install, mysql::service
}
