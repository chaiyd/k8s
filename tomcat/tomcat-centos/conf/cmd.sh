#!/bin/bash
source /etc/profile
set -euo pipefail

#time=`date +%Y-%m-%d`
#cd /tomcat-8.5.42/ && ./bin/startup.sh
#sleep 1
###打印日志#tail -f /tomcat-8.5.42/logs/catalina.$time.out

sh /tomcat-8.5.42/bin/catalina.sh run