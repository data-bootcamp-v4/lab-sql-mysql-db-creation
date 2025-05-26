CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    car_id VARCHAR(20) UNIQUE,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    price decimal(10,2),
	available BOOLEAN DEFAULT TRUE
);
CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT
);
CREATE TABLE salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staff_code VARCHAR(20) UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    customer_id INT,	
    salesperson_id INT,
    sale_date DATE,
    sale_price DECIMAL(10, 2),
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);