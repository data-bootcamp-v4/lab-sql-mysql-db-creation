CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS sales_persons;

CREATE TABLE sales_persons (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(40)
    );
    
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(60) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(80),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10)
);

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(40) NOT NULL,
    model VARCHAR(40) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) UNIQUE NOT NULL,
    date DATETIME NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES sales_persons(id)
);
