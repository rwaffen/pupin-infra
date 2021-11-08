# Class: profile::demo#
#
class infra::profiles::demo (
  String $world,
){
  notify { $world:   }
}
