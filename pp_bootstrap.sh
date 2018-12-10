#!/bin/bash -x
rpm -q puppet5-release
RPM_ERR=$?
[ "$RPM_ERR" -eq "1" ] && rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm

# [ "$RPM_ERR" -eq "0" ] && yum install puppet-agent

yum -y  install puppet-agent
#
# 
