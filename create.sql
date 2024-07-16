CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
-- Drop tables if they exist
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- Create Cars table
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

-- Create Customers table
CREATE TABLE customers (
    customer_id  INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(15) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(20)
);

-- Create Salespersons table
CREATE TABLE salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    salesperson_name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);

-- Create Invoices table
CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    inv_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(staff_id)
);
