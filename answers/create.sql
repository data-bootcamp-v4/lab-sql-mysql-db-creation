-- Create the Database
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Drop existing tables
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS sales_persons;
DROP TABLE IF EXISTS invoices;


-- Create tables

CREATE TABLE lab_mysql.cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(20)
);

		
CREATE TABLE lab_mysql.customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(20) UNIQUE NOT NULL,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

		
CREATE TABLE lab_mysql.sales_persons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(100),
    store VARCHAR(100)
);

		
CREATE TABLE lab_mysql.invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) UNIQUE NOT NULL,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(id),
    FOREIGN KEY (customer_id) REFERENCES Customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES sales_persons(id)
);

