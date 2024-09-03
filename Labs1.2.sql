DROP DATABASE car_sales;
CREATE DATABASE car_sales;

USE car_sales;

CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,
    Manufacturer VARCHAR(100) NOT NULL,
    Model VARCHAR(100) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(50)
);
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(255) UNIQUE,
    Address VARCHAR(255),
    City VARCHAR(100),
    StateProvince VARCHAR(100),
    Country VARCHAR(100),
    ZipPostalCode VARCHAR(20)
);
CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Store VARCHAR(255)
);
CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    VIN VARCHAR(17),
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (VIN) REFERENCES Cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);
CREATE INDEX idx_invoices_date ON Invoices (Date);

 


