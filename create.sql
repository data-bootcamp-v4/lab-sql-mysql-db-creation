CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30)
);

describe cars;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNIQUE NOT NULL, 
    name varchar(50) NOT NULL, 
    phone_number varchar(20) NOT NULL,
    email varchar(50) NOT NULL,
    address varchar(100) NOT NULL,
    city varchar(50) NOT NULL,
    `state/province` varchar(50) NOT NULL,
    country varchar(25) NOT NULL,
    `zip/postal_code` varchar(15) NOT NULL
    );
    
    describe customers;
    
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT UNIQUE NOT NULL,
	name varchar(50) NOT NULL,
	store varchar(100) NOT NULL
	);
        
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT UNIQUE NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
    );
    
    DESCRIBE salespersons;