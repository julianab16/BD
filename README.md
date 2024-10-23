# Datebase Component 

## Steps for buld and run a single database 
## 1. Create sql files:
-schema.sql: Contains the sql statements for create tables (using DDL)
-data.sql: Contains the sql statements for insert initial date (using DML)


## 2. Create Dokerfile

Set postgres image base:
-FROM Ppostgres: 14

 Add lines for copy files into container:
 -COPY ./db/schema.sql/docker-entrypoint-initdb.d/01_schema.sql
 -COPY ./db/data.sql/docker-entrypoint-initdb.d/01_data.sql


## 3. Build database image

inside database folder:

docker buid -t japeto/facturion .


## 4.  Run server with postgres

docker run --name facturion -p 5432:5432 -e POSTGRES_PASSWORD=aP4sw0rd japeto/facturion

Run integrate with dockercompose
Under development
