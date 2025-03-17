CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
name VARCHAR(20),
owner VARCHAR(20),
brand VARCHAR(20),
manufacturer VARCHAR(20),
year INT(4),
color VARCHAR(20)
);