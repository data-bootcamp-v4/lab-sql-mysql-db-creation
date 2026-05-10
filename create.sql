CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

SET FOREIGN_KEY_CHECKS = 1;

-- ===========================
-- TABLE: cars
-- ===========================
CREATE TABLE cars (
    id INT AUTO_INCREMENT NOT NULL,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- ===========================
-- TABLE: customers
-- ===========================
CREATE TABLE customers (
    id INT AUTO_INCREMENT NOT NULL,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(100) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

-- ===========================
-- TABLE: salespersons
-- ===========================
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT NOT NULL,
    staff_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- ===========================
-- TABLE: invoices
-- ===========================
CREATE TABLE invoices (
    id INT AUTO_INCREMENT NOT NULL,
    invoice_number INT NOT NULL,
    date DATE NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);

-- Comprobación
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salespersons;
SELECT * FROM invoices;

