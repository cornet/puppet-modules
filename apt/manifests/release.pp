# release.pp

define apt::release (

) {
  include apt

  file { "${apt::root}/apt.conf.d/01release":
    owner   => root,
    group   => root,
    mode    => '0644',
    content => "APT::Default-Release \"${name}\";"
  }
}
