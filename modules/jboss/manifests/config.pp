class jboss::config
(
$jboss_user = $jboss::jboss_user,
$jboss_group = $jboss::jboss_group,
$jboss_home = $jboss::jboss_home
)
{
user { $jboss_user :
ensure => present,
home => "/home/${jboss_user}",
require => Group[$jboss_group],
}
group { $jboss_group :
ensure => present,
}
#file { $jboss_home :
#ensure => directory,
#mode => '0755',
#owner => $jboss_user,
#groups => $jboss_group,
#}
}
