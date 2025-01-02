CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE lab_mysql.cars (
    cars_numeric_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS customers;

CREATE TABLE lab_mysql.customers (
    customers_numeric_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    adress VARCHAR(50) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(20) NOT NULL,
    country VARCHAR(20) NOT NULL,
    postal_code VARCHAR(15) NOT NULL
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE lab_mysql.salespersons (
    salesperson_numeric_id INT AUTO_INCREMENT PRIMARY KEY,
    salesperson_id INT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE lab_mysql.invoices (
    invoices_numeric_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL UNIQUE,
    date DATE NOT NULL,
    VIN INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL
);

SELECT 
    *
FROM
    lab_mysql.cars;