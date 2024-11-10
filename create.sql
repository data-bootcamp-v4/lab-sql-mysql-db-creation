CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
vin	VARCHAR(20) primary key,
manufacturer VARCHAR(20),	
model VARCHAR (20),
yeaR CHAR(4),
color VARCHAR(20)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
cust_id	VARCHAR(6) AUTO_INCREMENT primary key,
cust_name VARCHAR(25),
cust_phone CHAR(12),
cust_email VARCHAR(40),
cust_address VARCHAR(40),
cust_city VARCHAR(10),
cust_state CHAR(2),
cust_country VARCHAR(10),
cust_zipcode CHAR(7)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
staff_id VARCHAR(6) AUTO_INCREMENT primary key,	
name VARCHAR(25),
store VARCHAR(15)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
invoice_number VARCHAR(6) AUTO_INCREMENT primary key,	
date DATETIME,
car VARCHAR(6),
customer VARCHAR(6),
salesperson VARCHAR(6)
);




