CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices, cars, customers, salespersons;

CREATE TABLE cars (
id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(20) NOT NULL,
manufacturer VARCHAR(20),
model VARCHAR(20),
year INT,
color VARCHAR(20)
);

CREATE TABLE customers (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id VARCHAR(30) NOT NULL,
name VARCHAR(30),
mail VARCHAR(30),
phone_number VARCHAR(30),
adress VARCHAR(30),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
zip VARCHAR(30)
);

CREATE TABLE salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id VARCHAR(20) NOT NULL,
name VARCHAR(20),
store VARCHAR(20)
);

CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number VARCHAR(20) NOT NULL,
invoice_date DATE,
car INT,
customer INT,
salesperson INT,
FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);