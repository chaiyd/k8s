# use microsoft jdk
FROM mcr.microsoft.com/java/jdk:8u252-zulu-alpine

LABEL maintainer="Docker Maintainers <chaiyd.cn@gmail.com>"
#setting time zone
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add tzdata dumb-init \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

ARG app=war
ARG path=/home/tomcat/webapps/ROOT
ARG war=$app*

ADD tomcat.tar.gz /home/
ADD $war $path

COPY start.sh /home/tomcat

WORKDIR /home/tomcat

RUN chmod +x start.sh
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["sh", "-c", "./start.sh"]