CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
id INT NOT NULL AUTO_INCREMENT,
vin CHAR(17) NOT NULL,
manufacturer VARCHAR(25),
model VARCHAR(25),
year_of_fabrication YEAR,
color VARCHAR(25),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
id INT NOT NULL AUTO_INCREMENT,
customer_id CHAR(5) UNIQUE,
customer_name VARCHAR(25) NOT NULL,
phone_number VARCHAR(25),
email VARCHAR(25),
address VARCHAR(25),
city VARCHAR(25),
state_province VARCHAR(25),
country VARCHAR(25),
zip_postal_code CHAR(8),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
id INT NOT NULL AUTO_INCREMENT,
staff_id CHAR(8) UNIQUE,
salespersons_name VARCHAR(25) NOT NULL,
store VARCHAR(25),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
id INT NOT NULL AUTO_INCREMENT,
invoice_number VARCHAR(25), 
date DATE,  
car_id  INT,
customer_id INT,
salesperson_id INT,
PRIMARY KEY (id),
FOREIGN KEY (car_id) REFERENCES cars(id) ON UPDATE CASCADE,
FOREIGN KEY (customer_id) REFERENCES customers(id) ON UPDATE CASCADE,
FOREIGN KEY (salesperson_id) REFERENCES salespersons(id) ON UPDATE CASCADE
);