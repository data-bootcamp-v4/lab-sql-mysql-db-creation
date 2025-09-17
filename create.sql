 CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE Cars (
    id INT,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(50)
);

DROP TABLE IF EXISTS Cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(50)
);		

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR(50),
    cust_phone  INT,
    cust_email VARCHAR(50),
    cust_address VARCHAR(50),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode INT
);	

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id  INT,
	name VARCHAR(50),
    store VARCHAR(50)
);	

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number  INT,
	date INT,
	car INT,
    customer INT,
	salesperson INT
);	
