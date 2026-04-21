CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    customer_id VARCHAR(100),
    name_customer VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postalcode VARCHAR(20));

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT PRIMARY KEY,
    vin VARCHAR(17),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year_car YEAR,
    color VARCHAR(50));

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
	 id INT PRIMARY KEY,
     staff_id VARCHAR(100),
     name_staff VARCHAR(100),
     store VARCHAR(50));

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices(
	 id INT PRIMARY KEY,
     invoice_number VARCHAR(20),
     date_invoice DATE,
     car_id INT,
     customer_id INT,
     salesperson_id INT,
     invoices_price DECIMAL);

USE lab_mysql;
SHOW TABLES;