

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(30),
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT,
    color VARCHAR(30)
);

CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(30) UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id VARCHAR(30) UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
    );
    
CREATE TABLE invoices (
	id INT AUTO_INCREMENT PRIMARY KEY,
	invoice_number VARCHAR(30) UNIQUE,
    date DATE NOT NULL ,
    car INT NOT NULL ,
    customer INT NOT NULL ,
    salesperson INT NOT NULL, 
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
	);
    