-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Use the database
USE lab_mysql;

-- Create the Cars table with incremental id as the primary key
CREATE TABLE Cars (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-increment primary key
    VIN VARCHAR(17) UNIQUE,  -- VIN should remain unique but not the primary key
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(20)
);

-- Create the Customers table with auto-increment CustomerID and correct column types
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-increment CustomerID
    Name VARCHAR(100),
    PhoneNumber VARCHAR(25),
    Email VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(50),
    State_Province VARCHAR(50),
    Country VARCHAR(50),
    Zip_PostalCode VARCHAR(20)
);

-- Create the Salespersons table with auto-increment StaffID as primary key
CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-increment StaffID
    Name VARCHAR(100),
    Store VARCHAR(100)
);

CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-increment InvoiceNumber
    Date DATE,
    CarID INT,  -- Reference to id in Cars table (instead of CarVIN)
    CustomerID INT,  -- Reference to CustomerID in Customers table
    SalespersonID INT,  -- Reference to StaffID in Salespersons table
    FOREIGN KEY (CarID) REFERENCES Cars(id),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalespersonID) REFERENCES Salespersons(StaffID)
);

