DROP DATABASE IF EXISTS dealership;
CREATE DATABASE IF NOT EXISTS dealership;

USE dealership;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
car_id INT PRIMARY KEY,
vin_n INT,
manufacturer VARCHAR(20),
model VARCHAR(20),
year_c DATE,
color VARCHAR(20),
quantity INT
);

DROP TABLE IF EXISTS salespeople;

CREATE TABLE salespeople (
staff_id INT PRIMARY KEY,
store VARCHAR(20),
name_s VARCHAR(30)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
phone_n VARCHAR(20),
name_c VARCHAR(30),
email VARCHAR(50),
zip INT,
address VARCHAR(50),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
invoice_id INT PRIMARY KEY,
car_id INT,
staff_id INT,
customer_id INT,
date_i DATE
);