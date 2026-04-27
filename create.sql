CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- primero compruebo, como pide el ejercicio, que no haya ninguna tabla con dichos nombres --

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE IF NOT EXISTS cars (
id INT NOT NULL AUTO_INCREMENT,
vin VARCHAR(20),
manufacturer VARCHAR(50),
model VARCHAR(100),
car_year INT,
color VARCHAR(30),
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS customers (
cust_id INT NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100),
cust_phone VARCHAR(20),
cust_email VARCHAR(100),
cust_address VARCHAR(150),
cust_city VARCHAR(50),
cust_state VARCHAR(50),
cust_country VARCHAR(50),
cust_postalcode VARCHAR (10),
PRIMARY KEY (cust_id)
);

CREATE TABLE IF NOT EXISTS salespersons (
id INT auto_increment,
staff_id VARCHAR(50) NOT NULL UNIQUE,
name_salespersons VARCHAR(100),
store VARCHAR(50) ,
primary key (id)
);

CREATE TABLE IF NOT EXISTS invoices (
id INT AUTO_INCREMENT,
invoice_number VARCHAR(50) NOT NULL,
date_invoices DATE,
car INT,
customer INT,
salesperson INT,
PRIMARY KEY (id),
FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers (cust_id),
FOREIGN KEY (salesperson) REFERENCES salespersons (id)
);