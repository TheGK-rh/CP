FROM php:8.1-apache-bullseye

COPY php.ini /usr/local/etc/php/
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

RUN apt update \
    && apt install -y \
    libzip-dev \
    libpq-dev \
    && docker-php-ext-install \
    pdo \
    pdo_pgsql \
    pdo_mysql \
    pgsql \
    zip \
    opcache

WORKDIR /var/www