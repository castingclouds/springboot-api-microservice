exec { "apt-get update":
  command => "/usr/bin/apt-get update",
}

package { "openjdk-8-jdk":
  require => Exec["apt-get update"],
  ensure   => installed,
}
