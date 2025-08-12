CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop child table first to avoid foreign key constraint errors
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- Cars table
CREATE TABLE cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    VIN VARCHAR(40) NOT NULL,
    manufacturer VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    year INT,
    color VARCHAR(20)
);

-- Customers table
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(10)
);

-- Salespersons table
CREATE TABLE salespersons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(20) NOT NULL
);

-- Invoices table with foreign keys
CREATE TABLE invoices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number INT NOT NULL UNIQUE,
    `date` DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);