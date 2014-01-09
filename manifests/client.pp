class ssh::client {
  include ssh::params
  if $osfamily != 'Suse' {
    include ssh::client::install
  }
  include ssh::client::config
  include ssh::knownhosts
}
