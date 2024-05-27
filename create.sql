CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE Cars;

CREATE TABLE Cars (
    VehicleID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(30),
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
	Color VARCHAR(20)
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(50),
    StateProvince VARCHAR(50),
    Country VARCHAR(50),
    ZipPostalCode VARCHAR(10)
);

CREATE TABLE Salespersons (
    StaffID INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(100) ,
    Store VARCHAR(100)
);

CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT, 
    Date DATE,
    VehicleID INT,
    CustomerID INT,
    StaffID INT,
	PRIMARY KEY (InvoiceNumber),
	FOREIGN KEY (VehicleID) REFERENCES Cars(VehicleID),
	FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

