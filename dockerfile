
FROM postgres:12-alpine

ENV POSTGRES_USER=wonGames
ENV POSTGRES_PASSWORD=wonGames123
ENV POSTGRES_DB=wonGames

COPY ./dump.sql /docker-entrypoint-initdb.d/