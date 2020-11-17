#!/bin/sh

set -eux

sed -i s/broker.id=.*/broker.id=$BROKER_ID/g config/server.properties
sed -i s/zookeeper.connect=.*/zookeeper.connect=$ZOOKEEPER_CONNECT/g config/server.properties
sed -i s/zookeeper.connection.timeout.ms=.*/zookeeper.connection.timeout.ms=$ZOOKEEPER_SYNC_TIME/g config/server.properties
sed -i s/num.partitions=.*/num.partitions=$NUM_PARTITIONS/g config/server.properties

./bin/kafka-server-start.sh  config/server.properties