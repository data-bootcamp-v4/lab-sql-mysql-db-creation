-- 1. Infrastructure setup: Create and select the database
CREATE DATABASE IF NOT EXISTS lab_mysql; -- [cite: 168]
USE lab_mysql; -- [cite: 169]

-- 2. Cleanup: Remove existing tables to ensure a clean deployment (ordered by dependencies)
DROP TABLE IF EXISTS invoices; -- [cite: 173]
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- 3. Data Schema Definition
-- Table: cars (Inventory management)
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY, -- Primary key as per audit requirements [cite: 66, 75]
    vin VARCHAR(255) NOT NULL, -- Vehicle Identification Number [cite: 56]
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year INT, -- Simplified for the exercise as requested [cite: 56]
    color VARCHAR(255)
);

-- Table: customers (Client directory)
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY, -- Independent auto-increment ID [cite: 66, 67]
    cust_id INT, -- Business ID provided in instructions [cite: 57, 198]
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255), -- Stored as string to accommodate international formats 
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state_province VARCHAR(255),
    country VARCHAR(255),
    zip_postal_code VARCHAR(255)
);

-- Table: salespersons (Staff directory)
CREATE TABLE salespersons (
    staff_id_pk INT AUTO_INCREMENT PRIMARY KEY, -- Primary key for relations [cite: 66]
    staff_id VARCHAR(255), -- Business identifier [cite: 58]
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255) -- Branch location [cite: 58]
);

-- Table: invoices (Transaction pivot table)
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY, -- [cite: 66]
    invoice_number VARCHAR(255), -- [cite: 59, 202]
    date DATE, -- [cite: 59]
    car INT, -- Foreign key linking to cars.car_id [cite: 59, 76]
    customer INT, -- Foreign key linking to customers.customer_id [cite: 59, 76]
    salesperson INT -- Foreign key linking to salespersons.staff_id_pk [cite: 59, 76]
);

