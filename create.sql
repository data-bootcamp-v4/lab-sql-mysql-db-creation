CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE Cars (
    car_id INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-incremented internal ID
    vin VARCHAR(40) UNIQUE,                 -- Unique VIN
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(50)
);
CREATE TABLE Customers (
    customer_key INT PRIMARY KEY AUTO_INCREMENT,  -- Auto-incremented internal ID
    customer_id INT UNIQUE,                       -- Business-related unique customer ID
    name VARCHAR(100) NOT NULL,                    -- Mandatory field
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    zip_code VARCHAR(20)
);

CREATE TABLE Salespersons (
    staff_key INT PRIMARY KEY AUTO_INCREMENT,  
    staff_id INT UNIQUE,                       
    name VARCHAR(100) NOT NULL,                
    store VARCHAR(100)
);

CREATE TABLE Invoices (
    invoice_key INT PRIMARY KEY AUTO_INCREMENT,   
    invoice_number INT UNIQUE,                      
    invoice_date DATE,
    vin VARCHAR(40) REFERENCES Cars(vin),
    customer_id INT REFERENCES Customers(customer_id),
    staff_id INT REFERENCES Salespersons(staff_id)
);