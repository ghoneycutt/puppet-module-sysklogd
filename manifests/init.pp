# == Class: sysklogd
#
# Goodbye, sysklogd
#
class sysklogd {

  # Everything in EL5 requires this package, so you cannot remove with a
  # package resource.
  exec { 'remove sysklogd':
    command => 'rpm -e --nodeps sysklogd',
    onlyif  => 'rpm -q sysklogd',
    path    => '/bin:/usr/bin:/sbin:/usr/sbin',
  }
}
