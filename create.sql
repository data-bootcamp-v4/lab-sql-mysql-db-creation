
CREATE DATABASE IF NOT EXISTS CarDealership;
USE CarDealership;

-- Crear tabla Cars
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(20)
);

-- Crear tabla Customers
CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    ZIP VARCHAR(10)
);

-- Crear tabla Salespersons
CREATE TABLE Salespersons (
    Staff_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Store VARCHAR(50)
);

-- Crear tabla Invoices
CREATE TABLE Invoices (
    Invoice_Number INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    VIN VARCHAR(17),
    Customer_ID INT,
    Staff_ID INT,
    FOREIGN KEY (VIN) REFERENCES Cars(VIN),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Salespersons(Staff_ID)
);
