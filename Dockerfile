FROM php:7.0-apache
RUN docker-php-ext-install sockets
RUN mkdir /root/app
ADD qufop.php /root/app/qufop.php
ENTRYPOINT  php -S 0.0.0.0:9100/handler /root/app/qufop.php