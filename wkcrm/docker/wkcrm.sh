#!/bin/bash

server_names=('gateway' 'work' 'oa' 'authorization' 'admin' 'bi' 'crm'  'job' 'examine')

cd /opt
for value in "${server_names[@]}"
do
    cd /opt/$value
    sh 72crm.sh start
    sleep 10s;
done
echo "wkcrm startup"
tail -f /dev/null
