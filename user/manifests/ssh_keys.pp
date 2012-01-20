ssh_authorized_key { 'nathan':
  ensure => 'present',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAABIwAAAIEA4lkBZSffWOkC1CG69WlhyMjKGTdKyria/ttjjEe1ONd5AgB9x24UhMQ698x19TK4BA/Swmr0UZ0PvjSMBKJv+mZAvulCHtsUn+aZbKkSDFcMYJZn5ZovZHgQHDvv0Flx5ZW8/zj9FDujktCrxcwwZfcMhfJGcORjVpRtUA7+06U=',
  user   => 'nathan',
}
