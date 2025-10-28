-- Delete the base if exists
DROP DATABASE IF EXISTS lab_mysql;

-- Create the base
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Use the base
USE lab_mysql;

-- Delete the cars table if exists
DROP TABLE IF EXISTS cars;

-- Create the cars table
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(30)
);

-- Delete the customers table if exists
DROP TABLE IF EXISTS customers;

-- Create the customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT UNIQUE,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(100),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Delete the salespersons table if exists
DROP TABLE IF EXISTS salespersons;

-- Create the salespersons table
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT UNIQUE,
    name VARCHAR(100),
    store VARCHAR(50)
);

-- Delete the invoices table if exists
DROP TABLE IF EXISTS invoices;

-- Create the invoices table
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) NOT NULL,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

-- Verify the creation of tables
SHOW TABLES;