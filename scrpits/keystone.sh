#!/bin/bash

set -e

KEYSTONE_CONF=/etc/keystone/keystone.conf

#install package
yum install -y openstack-keystone httpd mod_wsgi

#edit keystone.conf
openstack-config --set $KEYSTONE_CONF database connection  mysql+pymysql://keystone:qatest@vip/keystone
openstack-config



