FROM php:7.3-apache

ADD vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /app
RUN apt update \
    && apt install --yes git libxml2-dev zlib1g-dev libzip-dev \
    && apt clean \
    && rm -rf /var/lib/apt

RUN git clone https://github.com/OpenGamePanel/OGP-Website.git . \
    && chown -R www-data:www-data .

RUN docker-php-ext-install \
    bcmath \
    mysqli \
    xmlrpc \
    zip

RUN a2enmod rewrite

ADD config.inc.php /app/includes/
