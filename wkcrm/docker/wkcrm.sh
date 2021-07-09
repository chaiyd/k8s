#!/bin/sh

server_names=('gateway' 'work' 'oa' 'authorization' 'admin' 'bi' 'crm'  'job' 'examine')

cd /opt
# shellcheck disable=SC2039
for value in "${server_names[@]}"
do
    # shellcheck disable=SC2164
    cd /opt/$value
    sh 72crm.sh start
    sleep 10s;
done
echo "wkcrm startup"
tail -f /dev/null
