CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(100),
    year YEAR,
    color VARCHAR(50)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(50),
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(20)
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL UNIQUE,
    name VARCHAR(100),
    store VARCHAR(100)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number BIGINT NOT NULL UNIQUE,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);
