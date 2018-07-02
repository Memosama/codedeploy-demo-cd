#!/bin/bash
sudo yum -y wget epel-release
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
wget http://rpms.remirepo.net/enterprise/remi-release-7.rpm
rpm -Uvh remi-release-7.rpm epel-release-latest-7.noarch.rpm
yum install yum-utils
yum-config-manager --enable remi-php72
sudo yum -y install nginx php-fpm
useradd www-data
mkdir -p /tmp/wordpress-cache
chown -R nginx:nginx /tmp/wordpress-cache
chmod -R 700 /tmp/wordpress-cache
service nginx start
service php-fpm start
