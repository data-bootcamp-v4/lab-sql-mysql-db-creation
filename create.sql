-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Remove the tabe if it already exists
DROP TABLE IF EXISTS cars;

-- Create table cars 
CREATE TABLE CARS(
id INT AUTO_INCREMENT PRIMARY KEY,
vin CHAR (17) NOT NULL UNIQUE,
manufacturer VARCHAR (50) NOT NULL,
model VARCHAR (100) NOT NULL,
year INT NOT NULL,
color VARCHAR(30) NOT NULL
);

-- Remove the table if it already exists
DROP TABLE IF EXISTS customers;

-- Create the customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Remove the table if it already exists
DROP TABLE IF EXISTS salespersons;

-- Create the salespersons table
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

-- Remove the table if it already exists
DROP TABLE IF EXISTS invoices;

-- Create the invoices table
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL UNIQUE,
    sale_date DATE NOT NULL,

    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,

    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);















