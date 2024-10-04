CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    SystemID INT AUTO_INCREMENT PRIMARY KEY, 
    CustomerID VARCHAR(10) NOT NULL UNIQUE,         
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    ZipCode VARCHAR(10)
);

DROP TABLE IF EXISTS Salespersons;

CREATE TABLE Salespersons (
    SystemID INT AUTO_INCREMENT PRIMARY KEY, 
    StaffID VARCHAR(20) NOT NULL UNIQUE,        
    Name VARCHAR(50),
    Store VARCHAR(50)
);

DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY, 
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    CarYear INT,
    Color VARCHAR(20)
);

DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,  
    InvoiceDate DATE,
    Car VARCHAR(17),                                
    Customer VARCHAR(10),                          
    Salesperson VARCHAR(20),                       
    FOREIGN KEY (Customer) REFERENCES Customers(CustomerID),
    FOREIGN KEY (Salesperson) REFERENCES Salespersons(StaffID),
    FOREIGN KEY (Car) REFERENCES Cars(VIN)
);

SHOW TABLES;




