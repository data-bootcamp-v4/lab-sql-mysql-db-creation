-- Create Database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop Tables if they exist
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Create Cars Table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL, 
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

-- Create Customers Table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(80),
    address VARCHAR(200),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(15)
);

-- Create Salespersons Table
CREATE TABLE salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50)
);

-- Create Invoices Table
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);
