-- 1) Creating table if not exists
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- 1.2) First, dropping every TABLE
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- 2) First table: Cars
CREATE TABLE cars (
id	INT	AUTO_INCREMENT PRIMARY KEY,
vin	VARCHAR(50)	NOT NULL UNIQUE,
manufacturer	VARCHAR(50)	NOT NULL,
model	VARCHAR(50)	NOT NULL, 
year	YEAR	NOT NULL,
color VARCHAR(30)
);	

-- 3) Second table: Customers 
CREATE TABLE customers (
id	INT	AUTO_INCREMENT PRIMARY KEY,
cust_id	VARCHAR(10)	NOT NULL UNIQUE,
name	VARCHAR(100)	NOT NULL,
phone VARCHAR(20),
email VARCHAR(100), 
address VARCHAR(255),
city	VARCHAR(50),
state	VARCHAR(50), 
country	VARCHAR(50),
zipcode	VARCHAR(20)
);

-- 4) Third table: Salesperson
CREATE TABLE salespersons (
id	INT	AUTO_INCREMENT PRIMARY KEY,
staff_id	VARCHAR(10)	NOT NULL UNIQUE,
name	VARCHAR(100)	NOT NULL,
store	VARCHAR(100)	NOT NULL
);

-- 5) Fourth table: Invoices
CREATE TABLE invoices (
id	INT	AUTO_INCREMENT PRIMARY KEY,
invoice_number	VARCHAR(20)	NOT NULL UNIQUE,
date DATE	NOT NULL,
car_id	INT	NOT NULL,
customer_id	INT	NOT NULL,
salesperson_id	INT	NOT NULL,
FOREIGN KEY	(car_id)	REFERENCES cars(id),
FOREIGN KEY (customer_id)	REFERENCES customers(id),
FOREIGN KEY (salesperson_id)	REFERENCES salespersons(id)
);