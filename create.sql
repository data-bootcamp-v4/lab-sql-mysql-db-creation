CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS invoices;


CREATE TABLE cars (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20),
    manufacturer VARCHAR(20), 
    model VARCHAR(20),
    year INT, 
    color VARCHAR(20)
);
CREATE TABLE customers (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    cust_name VARCHAR(20),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(20),
    cust_address VARCHAR(100),
    cust_city VARCHAR(20),
    cust_state VARCHAR(20),
    cust_country VARCHAR(20),
    cust_zipcode VARCHAR(20)
);
CREATE TABLE salespersons (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    name VARCHAR(100),
    store VARCHAR(100)
);
CREATE TABLE invoices (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    vin VARCHAR(20),
    cust_id INT,
    staff_id INT,
    FOREIGN KEY (id) REFERENCES customers(id),
    FOREIGN KEY (id) REFERENCES cars(id),
    FOREIGN KEY (id) REFERENCES salespersons(id)
);