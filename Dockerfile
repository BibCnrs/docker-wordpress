FROM  wordpress:5.9.0-apache

ENV WPCLI_VERSION 0.24.1

RUN curl -OL https://github.com/wp-cli/wp-cli/releases/download/v$WPCLI_VERSION/wp-cli-$WPCLI_VERSION.phar \
 && chmod +x wp-cli-$WPCLI_VERSION.phar && mv wp-cli-$WPCLI_VERSION.phar /usr/local/bin/wp

COPY apache2.conf /etc/apache2/apache2.conf
COPY security.conf /etc/apache2/conf-enabled/security.conf
COPY config/* /var/www/html/

RUN a2enmod headers
