CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


-- =====================
-- Drop tables (ordem importa por causa das FKs)
-- =====================

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;


-- =====================
-- Create tables
-- =====================

CREATE TABLE cars (
    id INT NOT NULL AUTO_INCREMENT,
    VIN INT NOT NULL UNIQUE,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year INT,
    color VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL UNIQUE,
    name VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state_province VARCHAR(255),
    country VARCHAR(255),
    postal_code VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE salespersons (
    id INT NOT NULL AUTO_INCREMENT,
    staff_id INT NOT NULL UNIQUE,
    name VARCHAR(255),
    store VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE invoices (
    id INT NOT NULL AUTO_INCREMENT,
    invoice_number INT NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    PRIMARY KEY (id),

    UNIQUE (car_id),

    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);