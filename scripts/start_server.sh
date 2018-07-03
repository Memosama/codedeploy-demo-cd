#!/bin/bash
yum-config-manager --enable remi-php72
sudo yum -y install awscli nginx php-fpm php-opcache php-common php-mbstring php-mcrypt php-pecl-msgpack php-pdo php-pecl-memcached php-pecl-memcache php-mysqlnd php-pecl-zip php-tidy php-xml php-fpm php-bcmath php-gd php-process php-json php-cli php-pecl-igbinary php-xmlrpc php-intl
mkdir -p /tmp/wordpress-cache
chown -R nginx:nginx /tmp/wordpress-cache
chmod -R 700 /tmp/wordpress-cache
service nginx start
service php-fpm start
