CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
	car_id INT PRIMARY KEY,
    vin VARCHAR(255),
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year INT,
    color VARCHAR(255)
);

CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255)
);

CREATE TABLE salespersons (
	salesperson_id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE invoices (
	invoice_id INT PRIMARY KEY,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);
