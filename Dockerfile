FROM  wordpress:5.6.1-apache

ENV WPCLI_VERSION 0.24.1

RUN curl -OL https://github.com/wp-cli/wp-cli/releases/download/v$WPCLI_VERSION/wp-cli-$WPCLI_VERSION.phar \
 && chmod +x wp-cli-$WPCLI_VERSION.phar && mv wp-cli-$WPCLI_VERSION.phar /usr/local/bin/wp

COPY apache2.conf /etc/apache2/apache2.conf
COPY config/* /var/www/html/
