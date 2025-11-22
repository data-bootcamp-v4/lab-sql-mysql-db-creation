
-- Challenge 2 - Create the Database and Tables

-- 1. Create Database
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- 2. Create Tables
CREATE TABLE Cars (
    id INT AUTO_INCREMENT PRIMARY KEY,                -- Auto-increment ID
    vin VARCHAR(30) NOT NULL UNIQUE,                 -- Vehicle Identification Number
    manufacturer VARCHAR(30),
    model VARCHAR(30),
    yr YEAR,
    color VARCHAR(30)
);

CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,               -- Auto-increment ID
    cust_id VARCHAR(30) NOT NULL UNIQUE,            -- Customer identifier
    cust_name VARCHAR(150),
    cust_phone VARCHAR(50),
    cust_email VARCHAR(150),
    cust_address VARCHAR(200),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(20)
);

CREATE TABLE Salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,               -- Auto-increment ID
    staff_id VARCHAR(50) NOT NULL UNIQUE,           -- Staff identifier
    name VARCHAR(150),
    store VARCHAR(150)
);

CREATE TABLE Invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,               -- Auto-increment ID
    invoice_number VARCHAR(50) NOT NULL UNIQUE,
    invoice_date DATE,
    car_id_fk INT,                                   -- Foreign Key
    cust_id_fk INT,                                  -- Foreign Key
    salesperson_id_fk INT,                           -- Foreign Key

    FOREIGN KEY (car_id_fk) REFERENCES Cars(id),
    FOREIGN KEY (cust_id_fk) REFERENCES Customers(id),
    FOREIGN KEY (salesperson_id_fk) REFERENCES Salespersons(id)
);
