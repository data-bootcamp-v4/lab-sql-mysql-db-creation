CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
car_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(30), 
manufacturer VARCHAR(30), 
model VARCHAR(30), 
year INT, 
color VARCHAR(30), 
);


DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
staff_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
staff_name VARCHAR(30), 
store VARCHAR(30)
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(30),
phone_number VARCHAR(30),
email VARCHAR(30),
address VARCHAR(30),
city VARCHAR(30),
state_province VARCHAR(30),
country VARCHAR(30),
zip_postal_code VARCHAR(30)
);


DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
invoice_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
invoice_date DATE,
car_id INT,
customer_id INT,
staff_id INT,
FOREIGN KEY (car_id) REFERENCES cars(car_id),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);