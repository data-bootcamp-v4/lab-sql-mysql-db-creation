CREATE DATABASE IF NOT EXISTS cars_seller;
USE cars_seller;

-- 1. Drop existing tables in reverse order of dependencies to avoid constraint blocks
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- 2. Create the Cars Table
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(20)
);

-- 3. Create the Customers Table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(50),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- 4. Create the Salespersons Table
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

-- 5. Create the Invoices Table (Fixing the Foreign Key Logic)
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL,
    date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    -- Foreign Key constraints pointing to the parent tables
    CONSTRAINT fk_invoices_cars FOREIGN KEY (car_id) REFERENCES cars(id),
    CONSTRAINT fk_invoices_customers FOREIGN KEY (customer_id) REFERENCES customers(id),
    CONSTRAINT fk_invoices_salespersons FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

