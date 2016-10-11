FROM  wordpress:4.6.1-apache

COPY apache2.conf /etc/apache2/apache2.conf
COPY config/* /var/www/html/
