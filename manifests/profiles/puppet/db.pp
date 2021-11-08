# Class: profile::puppetdb
#
#
class infra::profiles::puppet::db {
  contain puppetdb

  firewall { '100 allow https access':
    dport  => [443, 8081],
    proto  => 'tcp',
    action => 'accept',
  }
}
