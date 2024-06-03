-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop tables if they exist to avoid errors
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Create the Cars table
CREATE TABLE cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year YEAR NOT NULL,
    Color VARCHAR(30) NOT NULL
);

-- Create the Customers table
CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    StateProvince VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    ZipPostalCode VARCHAR(20) NOT NULL
);

-- Create the Salespersons table
CREATE TABLE salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Store VARCHAR(100) NOT NULL
);

-- Create the Invoices table
CREATE TABLE invoices (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    CarID INT NOT NULL,
    CustomerID INT NOT NULL,
    StaffID INT NOT NULL,
    FOREIGN KEY (CarID) REFERENCES cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES salespersons(StaffID)
);