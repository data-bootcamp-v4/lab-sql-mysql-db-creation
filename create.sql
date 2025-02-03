CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE cars (
    vin VARCHAR(100) PRIMARY KEY,
    manufacturer VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(100) NOT NULL
);


CREATE TABLE customers (
    customerID VARCHAR(100) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),  -- Corregido "adress" a "address"
    city VARCHAR(100),
    state_province VARCHAR(100),
    zip_postalcode VARCHAR(10)
);

CREATE TABLE salespersons (
    staffID VARCHAR(100) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);


CREATE TABLE invoices (
    invoice_number VARCHAR(100) PRIMARY KEY,
    date DATE NOT NULL,
    car VARCHAR(100),
    customer VARCHAR(100),
    salesperson VARCHAR(100),
    FOREIGN KEY (car) REFERENCES cars(vin) ,
    FOREIGN KEY (customer) REFERENCES customers(customerID) ,
    FOREIGN KEY (salesperson) REFERENCES salespersons(staffID) 
);
