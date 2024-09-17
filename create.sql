CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Eliminar las tablas si ya existen
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;

-- Crear la tabla Cars
CREATE TABLE Cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(255) NOT NULL,
    Model VARCHAR(255) NOT NULL,
    Year YEAR NOT NULL,
    Color VARCHAR(50) NOT NULL
);

-- Crear la tabla Customers
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    State_Province VARCHAR(100),
    Country VARCHAR(100),
    Zip_Postal_Code VARCHAR(20)
);

-- Crear la tabla Salespersons
CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Store VARCHAR(255) NOT NULL
);

-- Crear la tabla Invoices
CREATE TABLE Invoices (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    CarID INT,
    CustomerID INT,
    SalespersonID INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalespersonID) REFERENCES Salespersons(StaffID)
);
