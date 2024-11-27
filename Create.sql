CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql; 

DROP TABLE IF EXISTS cars;


CREATE TABLE cars (
id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(100),
model VARCHAR(100),
manufacturer VARCHAR(100),
colors VARCHAR(100),
year YEAR
);


CREATE TABLE customer (
id INT AUTO_INCREMENT PRIMARY KEY,
cust_id VARCHAR(100),
cust_name VARCHAR(100),
cust_phone VARCHAR(100),
cust_email VARCHAR(100),
cust_address VARCHAR(100),
cust_city VARCHAR(100),
cust_state VARCHAR(100),
cust_country VARCHAR(100),
cust_zipcode int
);

CREATE TABLE salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id VARCHAR(100),
name VARCHAR(100),
store VARCHAR(100)
);

CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
customer VARCHAR(100),
salesperson VARCHAR(100),
car VARCHAR(100),
invoice_number VARCHAR(100),
date DATE,
FOREIGN KEY (id) REFERENCES cars(id),
FOREIGN KEY (id) REFERENCES customer (id),
FOREIGN KEY (id) REFERENCES salespersons (id)
);
