#!/bin/sh

\cp -r /usr/lib/jvm/zulu-8-azure/lib/tools.jar /usr/local/finereport/lib

sh /usr/local/finereport/bin/catalina.sh run
