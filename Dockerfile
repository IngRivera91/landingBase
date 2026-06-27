FROM php:8.3-apache

RUN a2enmod rewrite

COPY . /var/www/app

RUN rm -rf /var/www/html \
    && ln -s /var/www/app/public /var/www/html

WORKDIR /var/www/app

RUN chown -R www-data:www-data /var/www/app

EXPOSE 80