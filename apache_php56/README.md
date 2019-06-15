基于centos的docker镜像


此镜像中包含php56已经apache2.4

apache默认端口为80

运行

将php项目放入/var/www/html/目录中，或者自行更改docker挂载目录

docker run -d -it -v "/var/www/html:/var/www/html" -p 9090:80 chaiyd/apache_php56

如提示权限问题，请检查容器中/var/www/html/目前权限是否为apache用户
