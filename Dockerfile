FROM mysql:latest

ARG MYSQL_DATABASE
ARG MYSQL_ROOT_PASSWORD

ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

COPY ./scripts/dump.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
