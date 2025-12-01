CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    customer_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_code INTEGER,
    customer_name VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state_province VARCHAR(255),
    country VARCHAR(255),
    zip VARCHAR(255)
);

DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars (
 car_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20),
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year YEAR,
    color VARCHAR(255)
);

DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons (
    salesperson_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    staff_ID VARCHAR(20),
    salesperson_name VARCHAR(255),
    store VARCHAR(255)
);

DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices (
    invoice_ID BIGINT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50),
    date DATETIME,
    car_ID BIGINT,
    customer_ID BIGINT,
    salesperson_ID BIGINT,
    FOREIGN KEY (car_ID) REFERENCES Cars(car_ID),
    FOREIGN KEY (customer_ID) REFERENCES Customers(customer_ID),
    FOREIGN KEY (salesperson_ID) REFERENCES Salespersons(salesperson_ID)
);

