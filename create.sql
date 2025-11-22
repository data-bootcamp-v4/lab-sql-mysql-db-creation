CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year INT CHECK (year BETWEEN 1000 AND 9999) NOT NULL,
    color VARCHAR(100) NOT NULL
	);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    cust_id INT NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20) NULL CHECK (cust_phone REGEXP '^\\+?[0-9 ]{7,20}$'),
    cust_email VARCHAR(255) NULL CHECK (cust_email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    cust_address VARCHAR(300) NULL,
    cust_city VARCHAR(100) NULL,
    cust_state VARCHAR(100) NULL,
    cust_country VARCHAR(100) NULL,
    cust_zipcode VARCHAR(20) NULL CHECK (cust_zipcode REGEXP '^[0-9A-Za-z -]+$')
    );

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
	id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id VARCHAR(5) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
    );
    
DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL
    );