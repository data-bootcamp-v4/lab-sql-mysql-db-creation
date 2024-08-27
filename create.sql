CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    VIN VARCHAR(17) NOT NULL PRIMARY KEY,  
    manufacturer TEXT,
    model TEXT,
    Year CHAR(4),
    color TEXT
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    staffID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    store TEXT
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    phone_number INT,
    email TEXT,
    city TEXT,
    state_province TEXT,
    country TEXT,
    zip_code INT
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoicenumber INT AUTO_INCREMENT PRIMARY KEY,  
    date DATE,
    VIN VARCHAR(17),  
    customerID INT,
    staffID INT,
    FOREIGN KEY (VIN) REFERENCES cars(VIN),
    FOREIGN KEY (customerID) REFERENCES customers(customerID),
    FOREIGN KEY (staffID) REFERENCES salespersons(staffID)
);
