package { 'git' :
  ensure => installed
  }

yumrepo { 'azure-cli' :
  gpgkey => 'https://packages.microsoft.com/keys/microsoft.asc',
  ensure => present,
  baseurl => 'https://packages.microsoft.com/yumrepos/azure-cli',
  enabled => '1',
  gpgcheck => '1',
  }

package { 'azure-cli' :
  ensure => installed,
  require => Yumrepo['azure-cli'],
  }
  


package { 'WALinuxAgent' :
  ensure => installed
  }
service { 'waagent' :
  ensure => running
  }
