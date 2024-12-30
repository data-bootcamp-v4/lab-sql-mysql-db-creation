-- Create the database
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- Create the Cars table
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vin VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

-- Create the Customers table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(15),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(10)
);

-- Create the Salespersons table
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(50)
);

-- Create the Invoices table
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    car_vin VARCHAR(17),
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_vin)
        REFERENCES cars (vin),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (salesperson_id)
        REFERENCES salespersons (staff_id)
);