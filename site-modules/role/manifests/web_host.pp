# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include role::web_host
class role::web_host {
  class { 'webserver':
    http_port => 9000,
  }
}
