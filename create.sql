-- Challenge 1 & 2: Design and Create the Database

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS `lab_mysql`;
USE `lab_mysql`;

-- Drop existing tables to any avoid conflicts
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;

-- Create Cars table
CREATE TABLE `Cars` (
    id INT AUTO_INCREMENT PRIMARY KEY,           
    vin VARCHAR(50) UNIQUE NOT NULL,             
    manufacturer VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30)
);

-- Create Customers table
CREATE TABLE `Customers` (
    id INT AUTO_INCREMENT PRIMARY KEY,           
    customer_id INT UNIQUE,                     
    customer_name VARCHAR(50) NOT NULL,
    customer_phone_number VARCHAR(20),
    customer_email VARCHAR(50),
    customer_address VARCHAR(50),
    customer_city VARCHAR(50),
    customer_state VARCHAR(50),
    customer_country VARCHAR(50),
    customer_postal_code VARCHAR(20)
);

-- Create Salespersons table
CREATE TABLE `Salespersons` (
    id INT AUTO_INCREMENT PRIMARY KEY,           
    staff_id INT UNIQUE,                        
    salesperson_name VARCHAR(50) NOT NULL,
    company_store VARCHAR(50)
);

-- Create Invoices table
CREATE TABLE `Invoices` (
	id INT AUTO_INCREMENT PRIMARY KEY,           
    invoice_number BIGINT NOT NULL,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    company_store VARCHAR(50),

-- Defining foreign key relationships
FOREIGN KEY (car_id) REFERENCES Cars(id),
FOREIGN KEY (customer_id) REFERENCES Customers(id),
FOREIGN KEY (staff_id) REFERENCES Salespersons(id)
);

-- Show all tables to confirm
SHOW TABLES;

-- Optional: Check relationships in INFORMATION_SCHEMA
SELECT 
    TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE 
    TABLE_SCHEMA = 'lab_mysql'
    AND TABLE_NAME = 'Invoices'
    AND REFERENCED_TABLE_NAME IS NOT NULL;
