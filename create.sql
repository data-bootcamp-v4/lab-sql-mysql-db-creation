CREATE DATABASE IF NOT EXISTS lab_mysql_Cars;
CREATE DATABASE lab_mysql_Cars;
USE lab_mysql_Cars;

CREATE TABLE IF NOT EXISTS Cars (
    VIN VARCHAR(20) PRIMARY KEY,
    Manufacturer VARCHAR(50),
    Model Text,
    Year int,
    Color Text
);

CREATE TABLE IF NOT EXISTS Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name Text,
    Store Text
);

CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name Text,
    PhoneNumber VARCHAR(20),
    Email Text,
    Address Text,
    City VARCHAR(100),
    StateProvince VARCHAR(100),
    Country VARCHAR(100),
    ZipPostalCode VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    VIN VARCHAR(20),
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (VIN) REFERENCES Cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);

