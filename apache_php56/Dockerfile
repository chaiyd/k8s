FROM centos

RUN yum install -y epel-release && \
    rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum install --enablerepo=remi,remi-php56 php php-opcache php-pecl-apcu php-devel php-mbstring php-mcrypt php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pecl-xhprof php-pdo php-pear php-fpm php-cli php-xml php-bcmath php-process php-gd php-common supervisor httpd httpd-devel -y && \
    yum clean all && \
    rm -rf /tmp/*
 
COPY ./config/httpd.conf /etc/httpd/conf/
COPY ./config/cmd.sh /var/www/

RUN  chmod 755 /var/www/cmd.sh && \
     chown -Rf apache.apache /var/www/

# Expose Ports
EXPOSE 80

WORKDIR /var/www
ENTRYPOINT ["/bin/bash", "/var/www/cmd.sh"]
