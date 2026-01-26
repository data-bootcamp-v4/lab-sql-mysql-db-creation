CREATE DATABASE IF NOT EXISTS lab_mysql;
SET SQL_SAFE_UPDATES = 0;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) ,
    manufacturer VARCHAR(50), 
    model VARCHAR(50), 
    year INT ,
    color VARCHAR(30) 
);
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    c_id INT,
    c_name VARCHAR(100), 
    c_phone VARCHAR(30),
    c_email VARCHAR(100),
    c_address VARCHAR(150),
    c_city VARCHAR(50),
    c_state VARCHAR(50), 
    c_country VARCHAR(50), 
    c_zipcode VARCHAR(15)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10),
    name VARCHAR(100),
    store VARCHAR(50) 
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);  
