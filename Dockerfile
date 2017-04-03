FROM php:alpine

RUN set -x \
    && apk add --no-cache \
        autoconf \
        g++ \
        make \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
    && echo xdebug.remote_autostart=1 >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo xdebug.remote_enable=1 >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo xdebug.remote_host=10.0.75.1 >> /usr/local/etc/php/conf.d/xdebug.ini
