FROM php:7.0.4-fpm

RUN apt-get update
RUN apt-get install -y libmcrypt-dev mysql-client libmagickwand-dev --no-install-recommends
RUN docker-php-ext-install mcrypt pdo_mysql
