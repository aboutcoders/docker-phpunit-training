# PHP 7.1.6 and Apache based on official PHP image.
# Adding Xdebug, PHPUnit 6.2 and dependencies in order to provide
# a sandbox for testing PHPUnit with training purposes.

FROM php:7.1.6-apache

# Preset PHP.ini values and prompt for root user.
COPY config/php.ini /usr/local/etc/php/
COPY config/.bashrc /root/.bashrc

# Overwrite the entry point (it's apache logs by default in parent image)
ENTRYPOINT ["/bin/bash"]

# Adding dependencies and tools
RUN apt-get update && apt-get install -y \
        apt-utils vim git zip

# Adding Xdebug
RUN pecl install xdebug-2.5.5 \
    && docker-php-ext-enable xdebug

# Adding Composer
WORKDIR /tmp
RUN curl --silent --show-error https://getcomposer.org/installer | php
RUN ["/bin/bash", "-c", "mv /tmp/composer.phar /usr/bin/composer"]
WORKDIR /root

