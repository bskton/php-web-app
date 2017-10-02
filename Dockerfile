FROM php:7.1.9-fpm

RUN apt-get update && \
apt-get install -y curl \
nginx \
python

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
python get-pip.py && \
easy_install supervisor

ADD php-fpm/www.conf /usr/local/etc/php-fpm.d/www.conf

ADD nginx/site.conf /etc/nginx/sites-available/default.conf
RUN rm /etc/nginx/sites-enabled/default && \
ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default
ADD www/index.php /var/www/html/index.php

ADD supervisor/supervisord.conf /etc/supervisord.conf

ADD scripts/start.sh /start.sh
RUN chmod 0755 /start.sh

EXPOSE 80

CMD ["/start.sh"]