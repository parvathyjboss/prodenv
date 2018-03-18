class jboss::irctc
(
$jboss_user = $jboss::jboss_user
)
{
file { "/home/${jboss_user}/standalone/deployments/jboss-as-helloworld.war" :
ensure => present,
source => '/home/vagrant/jboss-as-helloworld.war',
}
}
