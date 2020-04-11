class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'ssh':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm';
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5aOu7wdBGWPzr9WRwyRpTZBxhyHDqHTK34UdAs0CDL29UZ1K44RalR3zaslu6df/Ng44u71Y9G6vmkr3e+wB/tw2f5Iimd9+ITeqZICyB8LBBIz49aA27KjsFTCwspPG4TE4swD0ey6xlV4xWKWYIwm3h4gRKRoQIA+TPWyqwRPI6hLLAzXTviXIV5tGyrEN1IOgFRMfR4pF6W0OBgN1kgSu5vkoHbPP/CtMQuH4OtwrFS5ZSs+/yYYgLrpetI4mnLuhMAEUCgSd/8QwfMNrhBeV1sBlM5q26iLiDwB7MPZdsKwAjuc4dwFXnkgrg8H9IEa02IcCID4tPy8xXuQH5'
  }
}  
