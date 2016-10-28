FROM debian:jessie

RUN apt-get update
RUN apt-get install -y git curl wget

RUN echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
RUN wget -O- https://www.dotdeb.org/dotdeb.gpg | apt-key add -
RUN apt-get update


RUN apt install -y php7.0 php7.0-fpm php7.0-mysql php7.0-curl php7.0-json php7.0-gd php7.0-mcrypt php7.0-msgpack php7.0-memcached php7.0-intl php7.0-sqlite3 php7.0-gmp php7.0-geoip php7.0-mbstring php7.0-xml php7.0-zip

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer
ENV COMPOSER_CACHE_DIR=/tmp

RUN usermod -u 1000 www-data
USER www-data

WORKDIR /data

VOLUME /data

CMD ["echo", "Docker Tool Box :)"]
