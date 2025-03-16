CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
	id INT,
	VIN VARCHAR(17), 
	manufacturer VARCHAR(20), 
	model VARCHAR(40), 
	color VARCHAR(10),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
	id INT,
	customer_id int,
	customer_name VARCHAR(20),
	phone_number VARCHAR(20),
	customer_email VARCHAR(30),
	customer_address VARCHAR(50),
	cust_city VARCHAR(20),
	cust_state VARCHAR(20),
	cust_country VARCHAR(20),
	cust_zipcode INT,
PRIMARY KEY (customer_id)
);

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson(
	id INT,
	staff_id INT,
	staff_name VARCHAR(30),
	store VARCHAR(20),
PRIMARY KEY (staff_id)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
	id INT,
	invoice_number INT,
	sales_date VARCHAR(10),
	car INT,
	customer int,
	salesperson int,
PRIMARY KEY (invoice_number),
FOREIGN KEY (salesperson) REFERENCES salesperson (staff_id),
FOREIGN KEY (car) REFERENCES cars (id),
FOREIGN KEY (customer) REFERENCES customers(customer_id)
);

SHOW TABLES;
DESCRIBE cars;
