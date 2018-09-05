FROM wenyehui/svnserver:0.2
MAINTAINER tf_svnserver
WORKDIR /var/www
RUN mkdir  /var/www/svntools
RUN chown apache /root
COPY alias.conf /etc/httpd/conf.d/alias.conf
COPY passwd.php /var/www/svntools/passwd.php
RUN touch /var/www/svnconfig/accessfile && touch /var/www/svnconfig/passwdfile
RUN chmod 666 /var/www/svnconfig/accessfile && chmod 666 /var/www/svnconfig/passwdfile
EXPOSE 80
