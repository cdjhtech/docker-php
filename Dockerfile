FROM daocloud.io/php:5.6-apache
MAINTAINER "dengxh@bossbill.cn"

RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite
RUN a2enmod ssl

EXPOSE 80
EXPOSE 443

VOLUME ["/var/www/html"]

