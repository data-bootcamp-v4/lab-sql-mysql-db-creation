CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT auto_increment primary key,
    vin varchar(50),
    manufacturer varchar(50),
    model varchar(50),
    year int,
    colour varchar(50)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(10) NOT NULL,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(250),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(20)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL,
    name VARCHAR(100),
    store VARCHAR(100)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY,
    date DATE,
    car INT,
    customer INT,
    salesperson INT
);



