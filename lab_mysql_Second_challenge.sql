-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Use the created database
USE lab_mysql;

-- Drop and Create Cars Table
DROP TABLE IF EXISTS cars;
CREATE TABLE cars ( 
	Car_ID varchar(17) primary key,
    VIN VARCHAR(17) PRIMARY KEY,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(20)
);

-- Drop and Create Customers Table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(50),
    StateProvince VARCHAR(50),
    Country VARCHAR(50),
    ZipPostalCode VARCHAR(10)
);

-- Drop and Create Salespersons Table
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Store VARCHAR(100)
);

-- Drop and Create Invoices Table
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    Date DATETIME,
    Car VARCHAR(17),
    CustomerID INT,
    SalespersonID INT,
    FOREIGN KEY (Car) REFERENCES cars(Car_ID),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (SalespersonID) REFERENCES salespersons(StaffID)
    );