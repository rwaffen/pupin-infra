# Class: role::puppetdb
#
#
class infra::roles::puppet::db {
  contain infra::profiles::base
  contain infra::profiles::puppet::db
}
