CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars 
( car_vin VARCHAR(17) PRIMARY KEY,
manufacturer VARCHAR(20),
model VARCHAR(20),
`year` VARCHAR(4),
color VARCHAR(20));

DROP TABLE IF EXISTS salesperson;

CREATE TABLE salesperson
( staff_id VARCHAR(5) PRIMARY KEY,
`name` VARCHAR(20),
store VARCHAR(20));

DROP TABLE IF EXISTS customers;

CREATE TABLE customers
(customer_id VARCHAR(10) PRIMARY KEY,
`name` VARCHAR(20),
phone_number VARCHAR(20),
email VARCHAR(50),
address VARCHAR(200),
city VARCHAR(20),
state_province VARCHAR(20),
country VARCHAR(20),
zip_postal_code VARCHAR(20));

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices
( invoice_number VARCHAR(10) PRIMARY KEY,
`date` DATE,
car_vin VARCHAR(17),
customer_id VARCHAR(10),
staff_id VARCHAR(5),
FOREIGN KEY (car_vin) REFERENCES cars(car_vin),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (staff_id) REFERENCES salesperson(staff_id));

SHOW TABLES;