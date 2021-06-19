FROM mcr.microsoft.com/java/jdk:8-zulu-alpine

LABEL maintainer="<chaiyd.cn@gmail.com>"
#setting time zone
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add tzdata dumb-init \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

ARG app=jar
ARG path=/home/
ARG jar=$app*.jar

ENV APP_NAME=$app

COPY agent $path/agent
COPY $jar $path
COPY start.sh $path

WORKDIR $path

RUN chmod +x start.sh
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["sh", "-c", "./start.sh"]