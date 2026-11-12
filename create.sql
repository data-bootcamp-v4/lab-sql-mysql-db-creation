CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20),
    manufacturer VARCHAR(20),
    model VARCHAR(20),
    year YEAR,
    color VARCHAR(12)
);
USE lab_mysql;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(40),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(30),
    cust_address VARCHAR(50),
    cust_city VARCHAR(20),
    cust_state VARCHAR(20),
    cust_country VARCHAR(20),
    cust_zipcode VARCHAR(20)
);

CREATE TABLE salespersons(
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id CHAR(5) NOT NULL UNIQUE,
    name VARCHAR(40),
    store VARCHAR(20)
);

CREATE TABLE invoices(
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL UNIQUE,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars (id),
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons (id)
);
SHOW CREATE TABLE invoices;
SHOW TABLES;