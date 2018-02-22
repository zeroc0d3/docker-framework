ARG POSTGRES_VERSION=9.6.7
FROM postgres:${POSTGRES_VERSION}

MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

ENV POSTGRES_ROOT_PASSWORD="root_password" \
    POSTGRES_ROOT_HOST="localhost" \
    POSTGRES_DATABASE="docker_framework" \
    POSTGRES_USER="zeroc0d3_username" \
    POSTGRES_PASSWORD="zeroc0d3_password" \
    PGDATA="/var/lib/postgresql/data"

VOLUME /var/lib/postgresql/data

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh
RUN ln -sf usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]
