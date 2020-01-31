# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



<!-- backup db -->
<!-- open psql console -->
psql
<!-- to exit -->
\q
<!-- connect to the database -->
\c flati_life_backend_development
<!-- listing the tables -->
\dt
<!-- show the data in the table -->
select * from cohort;
<!-- create a backup file .sql -->
pg_dump --no-owner flati_life_backend_development > flati_life_backup.sql
<!-- to import the backup file to a database -->
psql flati_backup < flati_life_backup.sql
<!-- create a database -->
CREATE DATABASE flati_life_backup;
<!-- to list databases -->
\list
