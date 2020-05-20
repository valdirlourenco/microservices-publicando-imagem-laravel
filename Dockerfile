FROM php:7.4-fpm-alpine

RUN apk add bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf /var/www/html

COPY . /var/www

RUN ln -s public html

EXPOSE 9000

ENTRYPOINT [ "php-fpm" ]
