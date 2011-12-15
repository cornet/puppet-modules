# pin.pp
# pin a release in apt, useful for unstable repositories

define apt::pin(
  $packages = '*',
  $priority = 0
) {

  include apt

  file { "${name}.pref":
    ensure  => file,
    name    => "${apt::root}/preferences.d/${name}",
    owner   => root,
    group   => root,
    mode    => '0644',
    content => "# ${name}\nPackage: ${packages}\n
    Pin: release a=${name}\nPin-Priority: ${priority}",
  }

}
