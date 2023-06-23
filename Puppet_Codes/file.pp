file { '/etc/inetd.conf':
  ensure => '/etc/inet/inetd.conf',
}

file { '/etc/inetd.conf':
  ensure => link,
  target => '/etc/inet/inetd.conf',
}

# /etc/puppetlabs/puppet/manifests/site.pp
filebucket { 'main':
  path   => false,                # This is required for remote filebuckets.
  server => 'puppet.example.com', # Optional; defaults to the configured puppet master.
}

File { backup => main, }
