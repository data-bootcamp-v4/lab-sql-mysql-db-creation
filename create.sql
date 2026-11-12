CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Eliminar las tablas si ya existen
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Crear tabla cars
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30)
);

-- Crear tabla customers
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Crear tabla salespersons
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(5) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

-- Crear tabla invoices
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL,
    date DATE NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL
);

-- Crear relaciones entre las tablas
ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_car
FOREIGN KEY (car) REFERENCES cars(id);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_customer
FOREIGN KEY (customer) REFERENCES customers(id);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoice_salesperson
FOREIGN KEY (salesperson) REFERENCES salespersons(id);