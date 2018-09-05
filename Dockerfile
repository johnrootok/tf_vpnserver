FROM wenyehui/svnserver:0.2
MAINTAINER tf_svnserver
WORKDIR /var/www
RUN mkdir  /var/www/svntools
COPY alias.conf /etc/httpd/conf.d/alias.conf
COPY passwd.php /var/www/svntools/passwd.php
EXPOSE 80
