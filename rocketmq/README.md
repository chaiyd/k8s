# rocketmq

Apache RocketMQ™ is a unified messaging engine, lightweight data processing platform.

## 简述
* https://github.com/chaiyd/docker.git
* rocketmq默认大约需要12G内存
* mqnamesrv 4G
* broker 8G
* 使用官方默认配置，未做任何更改

## TAG
* [rocketmq](https://github.com/chaiyd/docker/tree/master/rocketmq)
* [rocketmq:mqnamesrv](https://github.com/chaiyd/docker/tree/master/rocketmq-mqnamesrv)
* [rocketmq:broker](https://github.com/chaiyd/docker/tree/master/rocketmq-broker)

## 说明
* rocketmq:tag
  * 镜像默认包含mqnamesrv，broker  
* rocketmq:mqnamesrv-tag
  * 仅包含mqnamesrv
* rocketmq:broker-tag
  * 仅包含broker
  * 单独使用broker-tag请一定要传入ROCKETMQ_ADDR
  * ```ROCKETMQ_ADDR=localhost:9876```

## rocketmq官方文档
* https://rocketmq.apache.org/
* https://rocketmq.apache.org/docs/quick-start/

More Details:
* [English](https://github.com/apache/rocketmq/tree/master/docs/en)
* [中文](https://github.com/apache/rocketmq/tree/master/docs/cn)
