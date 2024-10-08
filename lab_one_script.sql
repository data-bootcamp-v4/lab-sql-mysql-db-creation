CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

SHOW TABLES;

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
	staff_id INT PRIMARY KEY,
    name VARCHAR(20),
    store_id VARCHAR(6)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    phone_number VARCHAR(20),
    email VARCHAR(20),
    city VARCHAR(20),
    state_province VARCHAR(20),
    country VARCHAR(20),
    zip_postal_code INT
);

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	VIN INT PRIMARY KEY,
    manufacturer VARCHAR(20),
    year INT,
    color VARCHAR(20),
    numeric_id INT
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY,
    date DATE,
    salespersons_staff_id INT,
    cars_numeric_id INT,
    cars_VIN INT,
    FOREIGN KEY (salespersons_staff_id) REFERENCES salespersons(staff_id),
    FOREIGN KEY (cars_VIN) REFERENCES cars(VIN)
);