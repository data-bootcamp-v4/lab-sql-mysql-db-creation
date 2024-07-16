CREATE DATABASE IF NOT EXISTS lab_mysql;


USE lab_mysql;


DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17) NOT NULL,
    Manufacturer VARCHAR(100) NOT NULL,
    Model VARCHAR(100) NOT NULL,
    Man_Year INT NOT NULL,
    Color VARCHAR(50) NOT NULL
);
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT UNSIGNED NOT NULL,
    CustomerName VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(100),
    StateProvince VARCHAR(100),
    Country VARCHAR(100),
    ZipPostalCode VARCHAR(20)
);

-- Drop and Create Salespersons Table
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StaffID INT NOT NULL,
    StaffName VARCHAR(50) NOT NULL,
    Store VARCHAR(50) NOT NULL
);

-- Drop and Create Invoices Table
DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceNumber INT NOT NULL,
    InvoiceDate DATE NOT NULL,
    Car INT UNSIGNED,
    Customer INT UNSIGNED,
    Salesperson INT UNSIGNED,
    FOREIGN KEY (Car) REFERENCES Cars(ID),
    FOREIGN KEY (Customer) REFERENCES Customers(ID),
    FOREIGN KEY (Salesperson) REFERENCES Salespersons(ID)
);

