-- Challenge 1 - Design the Database + Challenge 2 - Create the Database and Tables
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
id INT AUTO_INCREMENT NOT NULL,
vin CHAR (17) NOT NULL,
manufacturer VARCHAR (50) NOT NULL,
model VARCHAR (50) NOT NULL,
years YEAR,
color VARCHAR (200),
PRIMARY KEY (id)
);

CREATE TABLE customers (
id INT AUTO_INCREMENT NOT NULL,
cust_id CHAR (5) NOT NULL,
cust_name VARCHAR (50) NOT NULL,
cust_phone VARCHAR (12) NOT NULL,
cust_email VARCHAR (100) NOT NULL,
cust_address VARCHAR (300) NOT NULL,
cust_city VARCHAR (300) NOT NULL,
cust_state VARCHAR (300) NOT NULL,
cust_country VARCHAR (300) NOT NULL,
cust_zipcode CHAR(10) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE salespersons (
id INT AUTO_INCREMENT NOT NULL,
staff_id CHAR (6) NOT NULL,
sales_name VARCHAR (50) NOT NULL,
store VARCHAR (300) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE invoices (
id INT AUTO_INCREMENT NOT NULL,
invoice_number CHAR (50) NOT NULL,
invoice_date VARCHAR (50) NOT NULL,
car INT NOT NULL,
customer INT NOT NULL,
salesperson INT NOT NULL,
PRIMARY KEY (id),
	FOREIGN KEY (car)
	REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (customer)
	REFERENCES customers (id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (salesperson)
	REFERENCES salespersons (id) ON DELETE CASCADE ON UPDATE CASCADE
);

SELECT *
FROM cars;

SELECT *
FROM customers;

SELECT *
FROM salespersons;

SELECT *
FROM invoices;

