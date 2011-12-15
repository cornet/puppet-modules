class munin::plugins::mysql::deps {

  # Dependencies appear to be broken on debian
  package {
    'libipc-sharelite-perl': ensure => latest;
    'libcache-cache-perl':   ensure => latest;
  }
}

class munin::plugins::mysql {

  include munin::plugins::mysql::deps

  File {
    require => Class['munin::plugins::mysql::deps'],
    notify  => Class['munin::service'],
  }

  file {
    '/etc/munin/plugins/mysql_bin_relay_log':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_commands':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_connections':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_files_tables':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_bpool':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_bpool_act':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_insert_buf':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_io':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_io_pend':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_log':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_rows':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_semaphores':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_innodb_tnx':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_myisam_indexes':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_network_traffic':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_qcache':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_qcache_mem':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_replication':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_select_types':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_slow':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_sorts':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_table_locks':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

  file {
    '/etc/munin/plugins/mysql_tmp_tables':
      ensure => 'link',
      target => '/usr/share/munin/plugins/mysql_'
  }

}
