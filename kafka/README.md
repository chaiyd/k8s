# kafka

Apache Kafka is an open-source distributed event streaming platform used by thousands of companies for high-performance data pipelines, streaming analytics, data integration, and mission-critical applications.

## 简述
- https://github.com/chaiyd/docker.git
- 此镜像中仅包含kafka，不含zookeeper
- 增加部分环境变量
```
BROKER_ID=0
#请务必传入zookeeper地址，否则会无法启动
ZOOKEEPER_CONNECT=localhost:2181
ZOOKEEPER_SYNC_TIME=2000
NUM_PARTITIONS=1
# 默认启动使用hostname，如想外部可自行更改，更改HOSTNAME的值为公网ip即可
HOSTNAME=$hostname \
LISTENERS="listeners=PLAINTEXT://:9092" \
ADVERTISED_LISTENERS="advertised.listeners=PLAINTEXT://$HOSTNAME:9092"
``` 

## kafka官方文档
- http://kafka.apache.org/documentation/
