class user::sysadmins inherits user::virtual {

  realize(
    Group['nathan'],
    User['nathan'],
    Ssh_authorized_key['nathan'],
  )

}
