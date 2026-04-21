CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(40),
    manufacturer VARCHAR(20),
    model VARCHAR(50),
    car_year CHAR(4),
    color VARCHAR(20)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    cust_name VARCHAR(40),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(50),
    cust_address VARCHAR(100),
    cust_city VARCHAR(20),
    cust_state VARCHAR(20),
    cust_country VARCHAR(20),
    cust_zip VARCHAR(10)
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10),
    person_name VARCHAR(100),
    store VARCHAR(20)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20),
    invoice_date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);