class user::virtual {

  @group { 'nathan':
    ensure => present,
  }

  @user { 'nathan':
    ensure     => 'present',
    home       => '/home/nathan',
    gid        => 'nathan',
    groups     => ['adm'],
    comment    => 'Nathan',
    shell      => '/bin/bash',
    password   => 'BOGUS_HASH',
    managehome => 'true',
    require    => Group['nathan'],
  }

  @ssh_authorized_key { 'nathan':
    ensure  => 'present',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAABIwAAAIEA4lkBZSffWOkC1CG69WlhyMjKGTdKyria/ttjjEe1ONd5AgB9x24UhMQ698x19TK4BA/Swmr0UZ0PvjSMBKJv+mZAvulCHtsUn+aZbKkSDFcMYJZn5ZovZHgQHDvv0Flx5ZW8/zj9FDujktCrxcwwZfcMhfJGcORjVpRtUA7+06U=',
    user    => 'nathan',
    require => User['nathan'],
  }
}
