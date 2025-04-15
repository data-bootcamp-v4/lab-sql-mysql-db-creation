--  create database
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
-- drop table if exist
DROP TABLE IF EXISTS cars;
-- create tables
CREATE TABLE cars (id int auto_increment primary key,
vin varchar(36) unique not null,
manufacturer varchar(100) not null,
model varchar(36) not null,
year YEAR not null,
color varchar(36)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (id int auto_increment primary key,
customer_id varchar(36) unique not null,
name varchar(100) not null,
phone varchar(36),
email varchar(50),
address varchar(255),
city varchar(85),
state varchar(50),
country varchar(50),
zip_code varchar(20)

);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (id int auto_increment primary key,
staff_id varchar(36) unique not null,
name varchar(100) not null,
store varchar(100)

);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (id int auto_increment primary key,
invoice_n varchar(36) unique not null,
date DATE not null,
vin INT NOT NULL,
customer_id INT NOT NULL,
staff_id INT NOT NULL,
FOREIGN KEY (vin) REFERENCES cars(id),
FOREIGN KEY (customer_id) REFERENCES customers(id),
FOREIGN KEY (staff_id) REFERENCES staff(id)
);
SELECT*from inventory



