FROM bhuisgen/alpine-base-consul:latest

MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

RUN apk add --update redis && \
    rm -rf /var/cache/apk/*

COPY rootfs/ /

ENTRYPOINT ["/init"]
CMD []

EXPOSE 6379
VOLUME ["/var/lib/redis"]
