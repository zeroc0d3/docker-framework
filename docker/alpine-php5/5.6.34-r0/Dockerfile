ARG PHP5_VERSION=5.6.34-r0

FROM bhuisgen/alpine-base-consul:latest
MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

RUN mkdir -p /var/www && \
    addgroup -g 82 -S www-data && \
    adduser -u 82 -S -D -g "" -G www-data www-data

ENV PHP5_VERSION=${PHP5_VERSION}

RUN apk add --update --no-cache \
    ca-certificates \
    tar \
    curl \
    bash && \
    apk add --update --no-cache \
    php5-session=${PHP5_VERSION} \
    php5-mcrypt=${PHP5_VERSION} \
    php5-soap=${PHP5_VERSION} \
    php5-openssl=${PHP5_VERSION} \
    php5-gmp=${PHP5_VERSION} \
    php5-pdo_odbc=${PHP5_VERSION} \
    php5-json=${PHP5_VERSION} \
    php5-dom=${PHP5_VERSION} \
    php5-pdo=${PHP5_VERSION} \
    php5-zip=${PHP5_VERSION} \
    php5-zlib=${PHP5_VERSION} \
    php5-mysqli=${PHP5_VERSION} \
    php5-sqlite3=${PHP5_VERSION} \
    php5-pdo_pgsql=${PHP5_VERSION} \
    php5-bcmath=${PHP5_VERSION} \
    php5-gd=${PHP5_VERSION} \
    php5-odbc=${PHP5_VERSION} \
    php5-pdo_mysql=${PHP5_VERSION} \
    php5-pdo_sqlite=${PHP5_VERSION} \
    php5-gettext=${PHP5_VERSION} \
    php5-xmlreader=${PHP5_VERSION} \
    php5-xmlwriter=${PHP5_VERSION} \
    php5-xmlrpc=${PHP5_VERSION} \
    php5-xml=${PHP5_VERSION} \
    php5-simplexml=${PHP5_VERSION} \
    php5-bz2=${PHP5_VERSION} \
    php5-iconv=${PHP5_VERSION} \
    php5-pdo_dblib=${PHP5_VERSION} \
    php5-curl=${PHP5_VERSION} \
    php5-ctype=${PHP5_VERSION} \
    php5-pcntl=${PHP5_VERSION} \
    php5-posix=${PHP5_VERSION} \
    php5-phar=${PHP5_VERSION} \
    php5-opcache=${PHP5_VERSION} \
    php5-mbstring=${PHP5_VERSION} \
    php5-zlib=${PHP5_VERSION} \
    php5-fileinfo=${PHP5_VERSION} \
    php5-tokenizer=${PHP5_VERSION} \
    php5-fpm=${PHP5_VERSION} \
    php5-xdebug=${PHP5_VERSION}  \
    php5=${PHP5_VERSION} && \
    apk del tar && \
    rm -rf /var/cache/apk/*

COPY rootfs/ /

ENTRYPOINT ["/init"]
CMD []

EXPOSE 9000
VOLUME ["/var/www"]
