CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop and create cars table (add id column)
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20),
    manufacturer VARCHAR(50), 
    model VARCHAR(50), 
    year YEAR, 
    color VARCHAR(20)
);

-- Drop and create customers table (add id column)
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20),
    name VARCHAR(50), 
    phone_number VARCHAR(50), 
    email VARCHAR(50), 
    address VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20)
);

-- Drop and create salespersons table (add id column)
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_ID VARCHAR(20),
    name VARCHAR(50),
    store VARCHAR(50)
);

-- Drop and create invoices table (add id column)
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20),
    date DATE,
    vin VARCHAR(20),
    customer_id INT,
    staff_id INT
);
