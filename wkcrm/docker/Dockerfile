FROM maven:3-openjdk-8 AS builder

#https://github.com/72wukong/72crm-11.0-Spring.git

# clone && build
RUN git clone https://gitee.com/wukongcrm/crm_pro.git \
    && cd crm_pro \
    && rm -rf /usr/share/maven/conf/settings.xml \
    && mvn install

# copy zip to opt
RUN cd crm_pro \
    && find . -name *.zip |cp `xargs` /opt

# unzip && rm zip
RUN cd /opt \
    && ls | awk -F . '{print $1}' > file \
    && for name in `cat file`;do unzip -d $name $name.zip;done \
    && rm -rf *.zip

FROM mcr.microsoft.com/java/jre:8u252-zulu-alpine

LABEL maintainer="<chaiyd.cn@gmail.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add tzdata dumb-init bash \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

COPY --from=builder /opt /opt

ADD wkcrm.sh /opt
WORKDIR /opt
RUN chmod +x wkcrm.sh

EXPOSE 8443

CMD ["bash", "-c", "./wkcrm.sh"]
