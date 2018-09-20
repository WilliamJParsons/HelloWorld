scheduled_task { 'Purge global temp files every 2 hours':
   ensure  => present,
   enabled => true,
   command   => 'c:\\windows\\system32\\cmd.exe',
   arguments => '/c "del c:\\windows\\temp\\*.* /F /S /Q"',
   trigger => [{
      day_of_week => ['mon', 'tues', 'wed', 'thurs', 'fri'],
      every => '1',
      minutes_interval => '120',
      minutes_duration => '1440',
      schedule => 'weekly',
      start_time => '07:30'
   }],
  user => 'system',
}

file { 'C:\\Users\\Administrator\\AppData\\LocalLow\\foo.txt':
  ensure   => present,
  content  => 'This is some text in my file'
}

# class { '::windows_snmp':
#   community           => 'Non-publ1c',
#   syscontact          => 'admin@example.org',
#   permitted_managers  => '10.16.130.15',
#   allow_address_ipv4  => [ '10.16.130.15', '192.168.70.0/24' ],
#   syslocation         => 'Will-work-laptop-vm',
# }

package { "Git version 2.19.0":
 ensure          => installed,
 source          => 'C:\users\Administrator\Downloads\Git-2.19.0-64-bit.exe',
 install_options => ['/VERYSILENT']
}