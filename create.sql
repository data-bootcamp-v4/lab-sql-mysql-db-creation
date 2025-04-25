-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop and create cars table
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

-- Drop and create customers table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(20),
    cust_name VARCHAR(100),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(20)
);

-- Drop and create salespersons table
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20),
    name VARCHAR(100),
    store VARCHAR(100)
);

-- Drop and create invoices table
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50),
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);


