class java::install
(
  $java_version = '8u131',
  $nexus        = 'url',
  $java_home    = '/usr/java/jdk1.8.0_131',
  )
{
  archive::nexus{"/tmp/JDK-x64-${java_version}.rpm":
    url        => $nexus,
    gav        => "Linux:jdk:${java_version}",
    classifier => 'x64',
    repository => 'JAVA',
    packaging  => 'rpm',
    extract    => false,
    allow_insecure => true,
  }

  exec{'installing java':
    command => "rpm -i /tmp/JDK-x64-${java_version}.rpm",
    path    => '/bin',
    unless  => "test -d ${java_home}",
    require => Archive::Nexus["/tmp/JDK-x64-${java_version}.rpm"],
  }
}

