# Class: profile::base
#
#
class infra::profiles::base {
  package { 'glibc-langpack-de':
    ensure => installed
  }
}
