CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

Show tables;

 CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20),
       species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);
Show tables;

DESCRIBE pet;
       
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
... 
);
