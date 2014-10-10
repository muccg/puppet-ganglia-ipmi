class gangliaipmi {
    package { ['ipmitool']:
      ensure => 'installed',
    }

  file {'/usr/local/bin/ganglia_ipmi_report.sh':
    source => 'puppet:///modules/gangliaipmi/ganglia_ipmi_report.sh',
    mode   => '0755'
  }

  file {'/etc/cron.d/ganglia_ipmi':
    source => 'puppet:///modules/gangliaipmi/ganglia_ipmi',
    mode   => '0644'
  }
}
