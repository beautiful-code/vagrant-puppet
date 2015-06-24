class hosts {

  host { 'master':
    name    => 'master.bc.com',
    ip      => '192.168.33.10',
    comment => 'Puppet Master',
  }

  host { 'agent01':
    name    => 'agent01.bc.com',
    ip      => '192.168.33.11',
    comment => 'Puppet Agent - 01',
  }

}
