-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop existing tables if needed
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- Cars table
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(30)
);

-- Customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(20) NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Salespersons table
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50)
);

-- Invoices table
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

