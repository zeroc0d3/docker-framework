ARG PHP7_VERSION=7.1.14-r0

FROM bhuisgen/alpine-base-consul:latest
MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

RUN mkdir -p /var/www && \
    addgroup -g 82 -S www-data && \
    adduser -u 82 -S -D -g "" -G www-data www-data

ENV PHP_VERSION=${PHP7_VERSION}

RUN apk upgrade --update --no-cache && \
    apk add --update --no-cache \
    ca-certificates \
    tar \
    curl \
    bash \
    && \
    apk add --update --no-cache \
    php7-session=${PHP_VERSION} \
    php7-mcrypt=${PHP_VERSION} \
    php7-soap=${PHP_VERSION} \
    php7-openssl=${PHP_VERSION} \
    php7-gmp=${PHP_VERSION} \
    php7-pdo_odbc=${PHP_VERSION} \
    php7-json=${PHP_VERSION} \
    php7-dom=${PHP_VERSION} \
    php7-pdo=${PHP_VERSION} \
    php7-zip=${PHP_VERSION} \
    php7-mysqli=${PHP_VERSION} \
    php7-sqlite3=${PHP_VERSION} \
    php7-pdo_pgsql=${PHP_VERSION} \
    php7-bcmath=${PHP_VERSION} \
    php7-gd=${PHP_VERSION} \
    php7-odbc=${PHP_VERSION} \
    php7-pdo_mysql=${PHP_VERSION} \
    php7-pdo_sqlite=${PHP_VERSION} \
    php7-gettext=${PHP_VERSION} \
    php7-xmlreader=${PHP_VERSION} \
    php7-xmlwriter=${PHP_VERSION} \
    php7-xmlrpc=${PHP_VERSION} \
    php7-xml=${PHP_VERSION} \
    php7-simplexml=${PHP_VERSION} \
    php7-bz2=${PHP_VERSION} \
    php7-iconv=${PHP_VERSION} \
    php7-pdo_dblib=${PHP_VERSION} \
    php7-curl=${PHP_VERSION} \
    php7-ctype=${PHP_VERSION} \
    php7-pcntl=${PHP_VERSION} \
    php7-posix=${PHP_VERSION} \
    php7-phar=${PHP_VERSION} \
    php7-opcache=${PHP_VERSION} \
    php7-mbstring=${PHP_VERSION} \
    php7-zlib=${PHP_VERSION} \
    php7-fileinfo=${PHP_VERSION} \
    php7-tokenizer=${PHP_VERSION} \
    php7-fpm=${PHP_VERSION} \
    php7-xdebug \
    php7=${PHP_VERSION} \
    rm -rf /var/cache/apk/*

COPY rootfs/ /

ENTRYPOINT ["/init"]
CMD []

EXPOSE 9000
VOLUME ["/var/www"]
