FROM mcr.microsoft.com/java/jdk:8-zulu-centos

RUN curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-8.repo && \
    yum makecache  && \
    dnf install langpacks-zh_CN.noarch fontconfig lsb -y && \
    echo "LANG=zh_CN.utf8" > /etc/locale.conf && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

COPY apache-tomcat-8.5.64 /usr/local/finereport
ADD fonts /usr/share/fonts
ADD start.sh /usr/local/finereport
RUN chmod +x /usr/local/finereport/start.sh \ 
    && mkfontscale; mkfontdir; fc-cache -fv

WORKDIR /usr/local/finereport

CMD ["sh", "-c", "./start.sh"]
