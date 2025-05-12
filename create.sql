DROP DATABASE lab_1;


CREATE DATABASE IF NOT EXISTS lab_1;

USE lab_1;

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS invoices;


CREATE TABLE IF NOT EXISTS cars(
car_id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(10),
manufacturer VARCHAR(20),
model VARCHAR(20),
car_year YEAR,
color VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(20),
phone_number INT,
email VARCHAR(30),
adress VARCHAR(30),
city VARCHAR(20),
state_province VARCHAR(20),
country VARCHAR(20),
zip_postal VARCHAR(10),
customer_code VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS salesperson(
staff_id INT AUTO_INCREMENT PRIMARY KEY,
salesperson_name VARCHAR(20),
store VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS invoices(
invoice_id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number int,
date_ DATE,
car_id INT,
customer_id INT,
staff_id INT,
FOREIGN KEY (car_id) REFERENCES cars (car_id),
FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
FOREIGN KEY (staff_id) REFERENCES salesperson (staff_id)
);