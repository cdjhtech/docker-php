FROM daocloud.io/php:5.6-apache
MAINTAINER "dengxh@bossbill.cn"

RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite
RUN a2enmod ssl

ADD index.php  /var/www/html
ADD vhost.conf  /etc/apache2/sites-enabled

EXPOSE 80
EXPOSE 443

VOLUME ["/data/wwwroot"]
VOLUME ["/data/wwwconfig"]
VOLUME ["/data/wwwlog"]
VOLUME ["/data/wwwssl"]

