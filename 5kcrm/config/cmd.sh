#!/bin/bash
source /etc/profile
set -euo pipefail

#chown -Rf www.www 
chown -R apache.apache /var/www/html/
#chmod +x /var/www/cmd.sh
httpd
php-fpm
# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf

