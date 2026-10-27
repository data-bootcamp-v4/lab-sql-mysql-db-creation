CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    car BIGINT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(255)
);

CREATE TABLE customers (
    customer BIGINT AUTO_INCREMENT PRIMARY KEY,
    customerID BIGINT NOT NULL UNIQUE,
    cust_name VARCHAR(255) NOT NULL,
    cust_phone VARCHAR(255),
    cust_email VARCHAR(255),
    cust_address VARCHAR(255),
    cust_city VARCHAR(255),
    cust_state VARCHAR(255),
    cust_country VARCHAR(255),
    cust_zipcode VARCHAR(255)
);

CREATE TABLE salespersons (
    salesperson BIGINT AUTO_INCREMENT PRIMARY KEY,
    staffID VARCHAR(255) NOT NULL UNIQUE,
    staff_name VARCHAR(255) NOT NULL,
    store VARCHAR(255) NOT NULL
);

CREATE TABLE invoices (
    invoice BIGINT AUTO_INCREMENT PRIMARY KEY,
    invoice_number BIGINT NOT NULL UNIQUE,
    date DATE NOT NULL,
    car BIGINT NOT NULL,
    customer BIGINT NOT NULL,
    salesperson BIGINT NOT NULL,
    FOREIGN KEY (car) REFERENCES cars(car),
    FOREIGN KEY (customer) REFERENCES customers(customer),
    FOREIGN KEY (salesperson) REFERENCES salespersons(salesperson)
);