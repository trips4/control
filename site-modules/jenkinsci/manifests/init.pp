# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include jenkinsci
class jenkinsci {
  package { 'jenkins':
    ensure => installed,
  }

  service { 'jenkins':
    ensure => running,
    enable => true,
  }
}
