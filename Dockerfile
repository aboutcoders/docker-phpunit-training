FROM php:7.1.6-apache

COPY config/php.ini /usr/local/etc/php/
COPY config/.bashrc /root/.bashrc

ENTRYPOINT ["/bin/bash"]

RUN apt-get update && apt-get install -y \
        vim        

RUN pecl install xdebug-2.5.0 \
    && docker-php-ext-enable xdebug