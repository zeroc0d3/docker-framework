ARG MONGO_VERSION=3.6.2
FROM mongo:${MONGO_VERSION}

MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

ENV MONGO_INITDB_ROOT_PASSWORD="root_password" \
    MONGO_INITDB_ROOT_USERNAME="root_mongo" \
    MONGO_INITDB_ROOT_HOST="localhost" \
    MONGO_DATABASE="docker_framework" \
    MONGO_USER="zeroc0d3_username" \
    MONGO_PASSWORD="zeroc0d3_password"

RUN mkdir -p /data/db /data/configdb \
    && chown -R mongodb:mongodb /data/db /data/configdb

VOLUME /data/db /data/configdb

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 27017
CMD ["mongod"]