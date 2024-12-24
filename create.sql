CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
CREATE TABLE cars (
    id INT NOT NULL AUTO_INCREMENT,
    vin VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(50),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    cust_id INT,
    cust_name VARCHAR(50) NOT NULL,
    cust_phone VARCHAR(50) NOT NULL,
    cust_email VARCHAR(100) NOT NULL,
    cust_address VARCHAR(100) NOT NULL,
    cust_city VARCHAR(100) NOT NULL,
    cust_state VARCHAR(100) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE salespersons (
    id INT NOT NULL AUTO_INCREMENT,
    staff_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE invoices (
    id INT NOT NULL AUTO_INCREMENT,
    invoice_number INT NOT NULL,
    date VARCHAR(50) NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    PRIMARY KEY (id)
);