CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (Car_ID VARCHAR(20), VIN VARCHAR(20),
       Manufacturer VARCHAR(20), Model VARCHAR(20), Year DATE, Color VARCHAR(20));
       
