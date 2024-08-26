CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    VIN VARCHAR(17) NOT NULL PRIMARY KEY,
    Manufacturer VARCHAR(255) NOT NULL,
    Model VARCHAR(255) NOT NULL,
    Year YEAR NOT NULL,
    Color VARCHAR(255)
);

CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    StateProvince VARCHAR(255),
    Country VARCHAR(255),
    ZipPostalCode VARCHAR(10)
);

CREATE TABLE salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Store VARCHAR(255) NOT NULL
);

CREATE TABLE invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceDate DATE NOT NULL,
    CarVIN VARCHAR(17),
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (CarVIN) REFERENCES cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES salespersons(StaffID)
);