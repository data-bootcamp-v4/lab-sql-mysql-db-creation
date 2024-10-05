-- Create a new schema for the car dealership if needed
CREATE SCHEMA IF NOT EXISTS schema_lab;

-- Create the database for the car dealership
CREATE DATABASE IF NOT EXISTS car_dealership;

-- Use the car_dealership database for subsequent operations
USE car_dealership;

-- Create the cars table to store vehicle information
CREATE TABLE IF NOT EXISTS cars (
    vin VARCHAR(100) PRIMARY KEY,  -- Vehicle Identification Number (VIN)
    manufacturer VARCHAR(100),       -- Car manufacturer
    model VARCHAR(100),              -- Car model
    year INT,                        -- Manufacturing year
    color VARCHAR(50)                -- Color of the car
);

-- Create the customers table to store customer information
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique customer ID
    name VARCHAR(100),                           -- Customer's name
    phone_number VARCHAR(20),                    -- Customer's phone number
    email VARCHAR(100),                          -- Customer's email address
    address VARCHAR(255),                        -- Customer's address
    city VARCHAR(100),                           -- City of residence
    state_province VARCHAR(100),                 -- State or province
    country VARCHAR(100),                        -- Country
    zip_postal_code VARCHAR(20)                  -- ZIP or postal code
);

-- Create the salespersons table to store salesperson information
CREATE TABLE IF NOT EXISTS salespersons (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique staff ID
    name VARCHAR(100),                         -- Salesperson's name
    store VARCHAR(100)                         -- Store location
);

-- Create the invoices table to track sales transactions
CREATE TABLE IF NOT EXISTS invoices (
    invoice_number INT PRIMARY KEY AUTO_INCREMENT,  -- Unique invoice number
    date DATE,                                     -- Date of the invoice
    car_vin VARCHAR(100),                          -- Foreign key referencing cars table
    customer_id INT,                               -- Foreign key referencing customers table
    staff_id INT,                                  -- Foreign key referencing salespersons table
    FOREIGN KEY (car_vin) REFERENCES cars(vin),   -- Establishes relationship with cars table
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),  -- Establishes relationship with customers table
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)    -- Establishes relationship with salespersons table
);

-- Data Seeding: Insert initial data into the tables

INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('1HGCM82633A123456', 'Honda', 'Accord', 2020, 'Red'),
('1G1ZB5ST8HF123456', 'Chevrolet', 'Malibu', 2019, 'Blue');

INSERT INTO customers (name, phone_number, email, address, city, state_province, country, zip_postal_code) VALUES
('John Doe', '555-1234', 'john@example.com', '123 Elm St', 'Springfield', 'IL', 'USA', '62701'),
('Jane Smith', '555-5678', 'jane@example.com', '456 Oak St', 'Shelbyville', 'IL', 'USA', '62702');

INSERT INTO salespersons (name, store) VALUES
('Alice Johnson', 'Downtown'),
('Bob Brown', 'Uptown');

INSERT INTO invoices (date, car_vin, customer_id, staff_id) VALUES
('2024-10-01', '1HGCM82633A123456', 1, 1),
('2024-10-02', '1G1ZB5ST8HF123456', 2, 2);

-- Data Deletion: Example of how to delete a record from the cars table
-- DELETE FROM cars WHERE vin = '1HGCM82633A123456';

-- Data Updates: Example of how to update a customer's email
-- UPDATE customers SET email = 'newemail@example.com' WHERE customer_id = 1;
