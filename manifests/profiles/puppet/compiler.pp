# Class: profile::puppet::compiler
#
#
class infra::profiles::puppet::compiler (
  String $puppetdb_host = 'puppetdb.priv.rw.example42.cloud',
  String $control_repo  = 'https://github.com/rwaffen/pupin-control.git',
){
  contain git

  class { 'r10k':
    sources => {
      'puppet' => {
        'remote'  => $control_repo,
        'basedir' => '/etc/puppetlabs/code/environments',
        'prefix'  => false,
      },
    },
  }

  class { 'puppetdb::master::config':
    puppetdb_server => $puppetdb_host,
  }
}
