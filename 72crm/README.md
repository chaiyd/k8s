基于centos的docker镜像


此镜像中包含php56、apache2.4、72crm_9.0

apache默认端口为80

docker run -d -it -p 9090:80 chaiyd/72crm_9.0

如提示权限问题，请检查容器中/var/www/html/目前权限是否为apache用户

访问ip:9090/72crm/

一键安装ip:9090/72crm/index.php/admin/install/index.html
