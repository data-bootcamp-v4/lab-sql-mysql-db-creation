CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Tabla: cars
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20) UNIQUE NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

-- Tabla: customers
CREATE TABLE customers (
    customer_record_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(10) UNIQUE,
    name VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address TEXT,
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20)
);

-- Tabla: salespersons
CREATE TABLE salespersons (
    salesperson_record_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) UNIQUE,
    name VARCHAR(100),
    store VARCHAR(50)
);

-- Tabla: invoices
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) UNIQUE,
    invoice_date DATE,
    car_id INT,
    customer_record_id INT,
    salesperson_record_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_record_id) REFERENCES customers(customer_record_id),
    FOREIGN KEY (salesperson_record_id) REFERENCES salespersons(salesperson_record_id)
);
