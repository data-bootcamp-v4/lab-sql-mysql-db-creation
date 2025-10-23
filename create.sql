-- 1. CREATE DATABASE
-- Drops the database if it exists to ensure a clean start (as recommended in the prompt for testing).
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- 2. Create Independent Tables (No foreign keys yet)

-- Table 1: cars
-- Includes a surrogate primary key (car_id) and unique constraint on VIN.
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(20)
);

-- Table 2: customers
-- Uses 'customer_pk' as the surrogate key and keeps 'customer_id' as a unique business identifier.
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_pk INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20)
);

-- Table 3: salespersons
-- Uses 'salesperson_pk' as the surrogate key and keeps 'staff_id' as a unique business identifier.
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    salesperson_pk INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

-- 3. Create Dependent Table (Invoices) with Foreign Keys

-- Table 4: invoices
-- This table records the transaction and links to the three tables above via Foreign Keys.
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_pk INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL UNIQUE,
    date DATE NOT NULL,
    
    -- Foreign Key references to other tables
    car_id INT NOT NULL,
    customer_pk INT NOT NULL,
    salesperson_pk INT NOT NULL,

    -- Constraints definition based on our ERD design
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_pk) REFERENCES customers(customer_pk),
    FOREIGN KEY (salesperson_pk) REFERENCES salespersons(salesperson_pk)
);
