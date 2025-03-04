CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop tables if they exist to avoid conflicts
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS stores;
DROP TABLE IF EXISTS cars;

-- Create the Cars table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

-- Create the Customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

-- Create the Stores table
CREATE TABLE stores (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(10) NOT NULL
);

-- Create the Salespersons table
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    store_id INT,
    FOREIGN KEY (store_id) REFERENCES stores(store_id) ON DELETE SET NULL
);

-- Create the Invoices table
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT,  -- Allow NULL to satisfy ON DELETE SET NULL
    total_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id) ON DELETE SET NULL
);
