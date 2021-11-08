# Class: infra
#
#
class infra (
  Array $additional_profiles = [],
){
  include "infra::roles::${facts['role']}"

  # $additional_profiles.each |$profile| {
  #   include "infra::profiles::${profile}"
  # }
}
