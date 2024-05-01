#DROP DATABASE lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) UNIQUE,
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(10));

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250),
    phone_number VARCHAR(300),
    email VARCHAR(250),
    address VARCHAR(250),
    city VARCHAR(200),
    state_province VARCHAR(200),
    country VARCHAR(200),
    zip_postal_code VARCHAR(20),
    UNIQUE (email)
);
DROP TABLE IF EXISTS salesperson;

CREATE TABLE salesperson (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(300),
    store VARCHAR(300)
);
DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    car_id INT, 
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES salesperson(staff_id)  -- Corrected table name
);




