CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE Manufacturers (
    ManufacturerID VARCHAR(3) PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL
);

CREATE TABLE Models (
    ManufacturerID VARCHAR(3),
    Name VARCHAR(100),
    Version VARCHAR(10),
    Year INT,
    ModelID VARCHAR(255) GENERATED ALWAYS AS (
        CONCAT(ManufacturerID, Name, Version, Year)
    ) STORED PRIMARY KEY,
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
);
            
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,
    ModelID VARCHAR(255),
    Color VARCHAR(50),
    FOREIGN KEY (ModelID) REFERENCES Models(ModelID)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    Province_State VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Stores (
    StoreID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(255),
    City VARCHAR(100),
    Province_State VARCHAR(100),
    Postal_Code VARCHAR(20),
    Country VARCHAR(100)
);

CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    StoreID INT,
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);

CREATE TABLE Invoices (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,
    Invoice_Number INT,
    Date DATE DEFAULT (CURRENT_DATE),
    StoreID INT,
    CustomerID INT,
    StaffID INT,
    VIN VARCHAR(17),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID),
    FOREIGN KEY (VIN) REFERENCES Cars(VIN)
);