class jboss::install
(
    $jboss_version 	= $jboss::jboss_version,
    $install_source 	= $jboss::install_source,
    $java_home		= $jboss::java_home,
    $jboss_home		= $jboss::jboss_home,
    $mode              	= 'standalone',
    $jboss_port		= $jboss::jboss_port,
    $jboss_user		= $jboss::jboss_user,
    $jboss_group	= $jboss::jboss_group,
    $manage_user    	= false,
    $config          	= 'standalone.xml',
    $service_ensure  	= false,
    $service_enable  	= false,
)
{
class{'::wildfly':
    version          => "$jboss_version",
    install_source   => "$install_source",
    java_home        => "$java_home",
    dirname          => "/home/${jboss_user}",
    mode             => 'standalone',
    public_http_port => "$jboss_port",
    user             => "$jboss_user",
    group            => "$jboss_group",
    manage_user      => false,
    service_ensure   => false,
    service_enable   => false,
   }
}
