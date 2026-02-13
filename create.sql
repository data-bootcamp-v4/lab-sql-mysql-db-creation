CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30) NOT NULL
);

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(150), 
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    zipcode VARCHAR(20)
);

CREATE TABLE salespersons(
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

CREATE TABLE invoices(
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL,
    date DATE NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL, 
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);