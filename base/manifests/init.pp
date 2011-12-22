class base::install {
  package{'vim':
      ensure  => latest;
  }
}

class base {
  include base::install
}
