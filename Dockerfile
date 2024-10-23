FROM postgres:14
COPY schema.sql /docker-entrypoint-initdb.d/00-schema.sql
COPY data.sql /docker-entrypoint-initdb.d/01-data.sql