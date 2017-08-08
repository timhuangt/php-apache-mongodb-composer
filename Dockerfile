FROM php:apache

# add mongodb extension
RUN apt-get update && apt-get -y install \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev \
    && pecl install mongodb \
    && docker-php-ext-enable mongodb

# add php composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# add git
RUN apt-get -y install git
