# Class: role::puppet::compiler
#
#
class infra::roles::puppet::compiler {
  contain infra::profiles::base
  contain infra::profiles::puppet::compiler
}
