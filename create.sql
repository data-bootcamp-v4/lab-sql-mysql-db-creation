DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT,
    vin VARCHAR(17),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT AUTO_INCREMENT,
    cust_id INT,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT,
    staff_id VARCHAR(10),
    name VARCHAR(100),
    store VARCHAR(50),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    id INT AUTO_INCREMENT,
    invoice_number INT,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);