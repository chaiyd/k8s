FROM chaiyd/jre

ADD conf/tomcat-8.5.42.tgz /
COPY conf/cmd.sh /tomcat-8.5.42
RUN chmod +x /tomcat-8.5.42/cmd.sh

#PORTS
EXPOSE 8080

WORKDIR /tomcat-8.5.42

ENTRYPOINT ["/bin/bash", "/tomcat-8.5.42/cmd.sh"]
