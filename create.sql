CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
id BIGINT PRIMARY KEY,
vin VARCHAR(50),
manufacturer CHAR(50),
model CHAR(50),
year YEAR,
color CHAR(20)
);

CREATE TABLE customers (
customer_id BIGINT PRIMARY KEY AUTO_INCREMENT,
name CHAR(50),
phone_number VARCHAR(25),
email VARCHAR(50),
address VARCHAR(50),
city CHAR(50),
state_province CHAR(50),
country CHAR(50),
zip_postal_code VARCHAR(25)
);

CREATE TABLE salespersons (
staff_id BIGINT PRIMARY KEY AUTO_INCREMENT,
name CHAR(50),
store CHAR(50)
);

CREATE TABLE invoices (
invoice_number BIGINT PRIMARY KEY,
date DATE,
car BIGINT,
customer BIGINT,
staff_id BIGINT,
FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);

