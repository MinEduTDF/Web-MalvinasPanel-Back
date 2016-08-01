FROM composer/composer:latest
# Clona el repositorio 
RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev g++
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN git clone  https://github.com/MinEduTDF/Web-MalvinasPanel-Back /Web-MalvinasPanel-Back
WORKDIR /Web-MalvinasPanel-Back
RUN composer install
