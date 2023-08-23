FROM php:7.4-apache

RUN a2enmod rewrite

RUN apt-get update -qq \
  && apt-get install -y git libpq-dev zip unzip \
  && apt-get clean autoclean \
  && apt-get autoremove -y

RUN docker-php-ext-install mysqli pdo pdo_mysql 

WORKDIR /var/www/html
COPY . .
COPY ./docker-files/apache-site-default.conf /etc/apache2/sites-available/000-default.conf

RUN chmod -R 777 storage bootstrap/cache

COPY ./docker-files/docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN chmod +x /bin/docker-entrypoint.sh

COPY ./docker-files/db-migrate.sh /bin/db-migrate.sh
RUN chmod +x /bin/db-migrate.sh

COPY --from=composer:1.9.1 /usr/bin/composer /usr/bin/composer

RUN composer install

CMD php artisan key:generate && \
    php artisan jwt:generate && \
    php database/seeds/DummyDataSeeder.php && \
    php artisan db:seed && \

RUN  apache2-foreground


ENTRYPOINT ["/bin/docker-entrypoint.sh"]