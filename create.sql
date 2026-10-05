# Challenge 2

# Create db lab_mysql
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

# Create tables
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    cust_name VARCHAR(50),
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(100),
    cust_city VARCHAR(50),
	cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(50) # We use varchar because it's an identifier (not a num to calculate with)
);


DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
	salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10),
    name VARCHAR(50),
    store VARCHAR(30)
);


DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
	invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car INT,
    customer INT,
    salesperson INT
);
