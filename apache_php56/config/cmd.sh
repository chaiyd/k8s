#!/bin/bash
source /etc/profile
set -euo pipefail

#chown -Rf www.www 
chwon -R apache.apache /var/www/html/
httpd
php-fpm
# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf

