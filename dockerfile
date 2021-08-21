FROM postgres:12-alpine

ENV POSTGRES_USER=dragoongames
ENV POSTGRES_PASSWORD=dragoongames123
ENV POSTGRES_DB=dragoongames

COPY ./dump.sql /docker-entrypoint-initdb.d/