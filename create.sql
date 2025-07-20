-- Drop tables if they already exist
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- Create and use the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Table: Cars
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

-- Table: Customers
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(100),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Table: Salespersons
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    name VARCHAR(100),
    store VARCHAR(50)
);

-- Table: Invoices
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);
