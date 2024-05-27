CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
vin VARCHAR(17) PRIMARY KEY,
manufacturer VARCHAR(10),
model VARCHAR(50),
year YEAR,
color VARCHAR(10)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
phone_number VARCHAR(20),
email VARCHAR(50),
address VARCHAR(100),
city VARCHAR(50),
state VARCHAR(50),
country VARCHAR(50),
postcode VARCHAR(10)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
staff_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
store VARCHAR(50)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
invoice_number INT AUTO_INCREMENT PRIMARY KEY,
date DATE,
car VARCHAR(17),
customer INT,
salesperson INT,
FOREIGN KEY (car) REFERENCES cars(vin),
FOREIGN KEY (customer) REFERENCES customers(customer_id),
FOREIGN KEY (salesperson) REFERENCES salespersons(staff_id)
);

