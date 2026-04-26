CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
	vin VARCHAR(50),
	manufacturer VARCHAR(50),
	model VARCHAR(50),
	year INT,
	colour VARCHAR(20)
    );

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    email VARCHAR(255)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL,
    name VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    car_id INT,
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(id)
);
