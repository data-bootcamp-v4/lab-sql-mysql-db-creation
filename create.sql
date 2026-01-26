CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zipcode VARCHAR(20)
);

CREATE TABLE salespersons(
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20),
    name VARCHAR(100),
    store VARCHAR(50)
);

CREATE TABLE invoices(
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