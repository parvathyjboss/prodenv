class jboss::params
{
    $jboss_version      = '7.0.0'
    $install_source     = 'jboss_download_url
    $java_home          = '/usr/java/jdk1.8.0_131'
#    $jboss_home         = '/web/jboss/'
    $mode                = 'standalone'
    $jboss_port         = '8080'
    $jboss_user         = 'jbossusr'
    $jboss_group        = 'jbossgrp'
    $manage_user         = false
    $config              = 'standalone.xml'
    $service_ensure      = false
    $service_enable      = false
}

