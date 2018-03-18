# Class: jboss
# ===========================
#
# Full description of class jboss here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'jboss':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class jboss
(
$jboss_version = $jboss::params::jboss_version,
 $install_source     = $jboss::params::install_source,
 $java_home          =  $jboss::params::java_home,
 $jboss_home         =  $jboss::params::jboss_home,
 $mode               =  $jboss::params::mode,
 $jboss_port         =  $jboss::params::jboss_port,
 $jboss_user         =  $jboss::params::jboss_user,
 $jboss_group        =  $jboss::params::jboss_group,
 $manage_user        =  $jboss::params::manage_user,
 $config             =  $jboss::params::config,
 $service_ensure     = $jboss::params::service_ensure,
 $service_enable     =  $jboss::params::servie_enable,
) inherits jboss::params
{
#include jboss::config
#include jboss::install
include jboss::irctc
#Class[ 'jboss::config' ] ->
#	Class[ 'jboss::install' ] ->
#		Class[ 'jboss::irctc' ]
}
