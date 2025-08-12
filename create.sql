CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    VIN CHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL,
    PRIMARY KEY (VIN)
);

CREATE TABLE customers (
    customer_ID INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    ZIP VARCHAR(20),
    PRIMARY KEY (customer_ID)
);

CREATE TABLE salespersons (
    staff_ID INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100),
    PRIMARY KEY (staff_ID)
);

CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT NOT NULL,
    date DATE NOT NULL,
    car_VIN CHAR(17) NOT NULL,
    customer_ID INT NOT NULL,
    salesperson_ID INT NOT NULL,
    PRIMARY KEY (invoice_number),
    FOREIGN KEY (car_VIN) REFERENCES cars(VIN),
    FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID),
    FOREIGN KEY (salesperson_ID) REFERENCES salespersons(staff_ID)
);
