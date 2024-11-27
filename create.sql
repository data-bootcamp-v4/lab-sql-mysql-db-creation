CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20),
    manufacturer VARCHAR(50),
    model VARCHAR(30),
    date_year YEAR,
    colors VARCHAR(10)
);
CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    name VARCHAR(20),
    phone_number VARCHAR(12),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(20),
    state_province VARCHAR(20),
    country VARCHAR(10),
    zip_code INT
);

CREATE TABLE salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    name VARCHAR(20),
    store VARCHAR(50)
);

CREATE TABLE invoices (
	id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car VARCHAR(20),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (id) REFERENCES cars(id),
    FOREIGN KEY (id) REFERENCES salespersons(id),
    FOREIGN KEY (id) REFERENCES customers(id)
);

