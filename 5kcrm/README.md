基于centos的docker镜像

下载之后代码之后，更名为72crm.tar.gz放入此目录进行docker build

此镜像中包含php56已经apache2.4

apache默认端口为80

使用方法
下载之后执行
docker build -t centos_5kcrm .

运行
docker run -d -it -p 9090:80 centos_5kcrm 

如提示权限问题，请检查/var/www/html/目前权限是否为apache用户

访问ip:9090/72crm/

一键安装ip:9090/72crm/index.php/admin/install/index.html
