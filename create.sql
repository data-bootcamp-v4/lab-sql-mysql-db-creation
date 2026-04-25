DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars(
id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(50) NOT NULL,
manufacturer VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
year INT NOT NULL,
color VARCHAR(30) NOT NULL
);

CREATE TABLE customers(
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
name VARCHAR(100) NOT NULL,
phone VARCHAR(30),
email VARCHAR(100),
address VARCHAR(300),
city VARCHAR(100),
state VARCHAR(100),
country VARCHAR(100),
zipcode VARCHAR(20)
);

CREATE TABLE salespersons(
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id VARCHAR(10) NOT NULL,
name VARCHAR(100) NOT NULL,
store VARCHAR(100) NOT NULL
);

CREATE TABLE invoices(
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number INT NOT NULL,
invoice_date DATE NOT NULL,
car_id INT,
customer_id INT,
salesperson_id INT,
FOREIGN KEY (car_id) REFERENCES cars(id),
FOREIGN KEY (customer_id) REFERENCES customers(id),
FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);