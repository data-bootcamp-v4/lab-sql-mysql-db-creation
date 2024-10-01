CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT,
    VIN CHAR(50),
    Manufacturer VARCHAR(15),
    Model VARCHAR(50),
    YearOfManufacture YEAR,
    Colour VARCHAR(15),
    PRIMARY KEY (id) 
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT AUTO_INCREMENT,
    CustomerID INT,
    CustomerName VARCHAR(100),
    Phone VARCHAR(20),      
    Email VARCHAR(50),      
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZIP CHAR(10),           
    Country VARCHAR(50),
    PRIMARY KEY (id)        
);

DROP TABLE IF EXISTS Salesperson;

CREATE TABLE Salesperson (
   StaffID INT AUTO_INCREMENT,   
   StaffName VARCHAR(100),       
   Store VARCHAR(100),           
   PRIMARY KEY (StaffID)         
);


DROP TABLE IF EXISTS Invoices;

CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT, 
    InvoiceDate DATE,                  
    Car VARCHAR(20),                   
    Customer VARCHAR(20),              
    Salesperson INT,                   
    PRIMARY KEY (InvoiceNumber),       
    FOREIGN KEY (Salesperson) REFERENCES Salesperson(StaffID) 
);


