ARG PHP7_VERSION=7.1.14-r0

FROM bhuisgen/alpine-base-consul:latest
MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

RUN mkdir -p /var/www && \
    addgroup -g 82 -S www-data && \
    adduser -u 82 -S -D -g "" -G www-data www-data

ENV PHP7_VERSION=${PHP7_VERSION}

RUN apk add --update --no-cache \
    ca-certificates \
    tar \
    curl \
    bash && \
    apk add --update --no-cache \
    php7-session=${PHP7_VERSION} \
    php7-mcrypt=${PHP7_VERSION} \
    php7-soap=${PHP7_VERSION} \
    php7-openssl=${PHP7_VERSION} \
    php7-gmp=${PHP7_VERSION} \
    php7-pdo_odbc=${PHP7_VERSION} \
    php7-json=${PHP7_VERSION} \
    php7-dom=${PHP7_VERSION} \
    php7-pdo=${PHP7_VERSION} \
    php7-zip=${PHP7_VERSION} \
    php7-zlib=${PHP7_VERSION} \
    php7-mysqli=${PHP7_VERSION} \
    php7-sqlite3=${PHP7_VERSION} \
    php7-pdo_pgsql=${PHP7_VERSION} \
    php7-bcmath=${PHP7_VERSION} \
    php7-gd=${PHP7_VERSION} \
    php7-odbc=${PHP7_VERSION} \
    php7-pdo_mysql=${PHP7_VERSION} \
    php7-pdo_sqlite=${PHP7_VERSION} \
    php7-gettext=${PHP7_VERSION} \
    php7-xmlreader=${PHP7_VERSION} \
    php7-xmlwriter=${PHP7_VERSION} \
    php7-xmlrpc=${PHP7_VERSION} \
    php7-xml=${PHP7_VERSION} \
    php7-simplexml=${PHP7_VERSION} \
    php7-bz2=${PHP7_VERSION} \
    php7-iconv=${PHP7_VERSION} \
    php7-pdo_dblib=${PHP7_VERSION} \
    php7-curl=${PHP7_VERSION} \
    php7-ctype=${PHP7_VERSION} \
    php7-pcntl=${PHP7_VERSION} \
    php7-posix=${PHP7_VERSION} \
    php7-phar=${PHP7_VERSION} \
    php7-opcache=${PHP7_VERSION} \
    php7-mbstring=${PHP7_VERSION} \
    php7-zlib=${PHP7_VERSION} \
    php7-fileinfo=${PHP7_VERSION} \
    php7-tokenizer=${PHP7_VERSION} \
    php7-fpm=${PHP7_VERSION} \
    php7-xdebug=${PHP7_VERSION}  \
    php7=${PHP7_VERSION} && \
    apk del tar && \
    rm -rf /var/cache/apk/*

COPY rootfs/ /

ENTRYPOINT ["/init"]
CMD []

EXPOSE 9000
VOLUME ["/var/www"]
