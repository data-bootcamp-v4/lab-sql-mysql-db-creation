-- Database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop tables in reverse order of dependencies
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS cars;

-- Create first table, cars
CREATE TABLE cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
	vin CHAR(17) NOT NULL,
	manufacturer VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	year YEAR,
	color VARCHAR(25)
);

-- Create second table, customers
CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
	cust_id INT NOT NULL UNIQUE,
	cust_name VARCHAR(80) NOT NULL,
	cust_phone VARCHAR(20) NOT NULL,
	cust_email VARCHAR(100) NULL,
	cust_address VARCHAR(100) NOT NULL,
	cust_city VARCHAR(50) NOT NULL,
	cust_country VARCHAR(50) NOT NULL,
	cust_state VARCHAR(50),
	cust_zipcode VARCHAR(10) NOT NULL
);

-- Create third table, salespersons
CREATE TABLE salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    staff_name VARCHAR(50) NOT NULL,
    staff_store VARCHAR(50) NOT NULL
);

-- Create fourth table, invoices
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    car_id INT NOT NULL UNIQUE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id),
    FOREIGN KEY (car_id) REFERENCES cars(id)
);