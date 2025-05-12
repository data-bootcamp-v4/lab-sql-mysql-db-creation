DROP DATABASE lab_mysql;

CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
id_car INT AUTO_INCREMENT,
vin VARCHAR(20) NOT NULL,
manufacturer VARCHAR(50),
model VARCHAR(50),
year YEAR NOT NULL,
color VARCHAR(20),
PRIMARY KEY(id_car)
);

CREATE TABLE IF NOT EXISTS customers (
cust_id INT NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(30) NOT NULL,
cust_phone VARCHAR(12),
cust_email VARCHAR(100),
cust_address VARCHAR(200),
cust_city VARCHAR(50),
cust_state VARCHAR(50),
cust_country VARCHAR(50),
cust_postalcode VARCHAR(10),
PRIMARY KEY(cust_id)
);

CREATE TABLE IF NOT EXISTS salespersons (
staff_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50),
store VARCHAR(50),
PRIMARY KEY(staff_id)
);

CREATE TABLE IF NOT EXISTS invoices (
invoice_id INT AUTO_INCREMENT,
invoice_number INT NOT NULL,
invoice_date DATE NOT NULL,
id_car INT,
cust_id INT,
staff_id INT,
PRIMARY KEY(invoice_id),
FOREIGN KEY(id_car) REFERENCES cars(id_car),
FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
FOREIGN KEY(staff_id) REFERENCES salespersons(staff_id)
);