## openjdk
- mcr.microsoft.com/java/jdk:8-zulu-alpine
- skywalking-agent-8.5

### BUILD
```shell
docker build --build-arg app=$app -t $app .
```

### ENV
```shell
skywalking=-javaagent:/home/agent/skywalking-agent.jar -Dskywalking.collector.backend_service=upp-skywalking-oap.common.svc.cluster.local:11800
JAVA_OPTS=-Xms256m -Xmx1024m -Duser.timezone=Asia/Shanghai -Dfile.encoding=UTF-8
```

### skywalking kubernetes yaml
- https://github.com/chaiyd/kubernetes.git