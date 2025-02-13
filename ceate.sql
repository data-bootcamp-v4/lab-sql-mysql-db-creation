CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Customers Table
CREATE TABLE Customers (
 Customer_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
    Name CHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City CHAR(50),
    State_Province CHAR(50),
    Country CHAR(50),
    ZipCode VARCHAR(20)
);

-- Salespersons Table
CREATE TABLE Salespersons (
    StaffID BIGINT PRIMARY KEY AUTO_INCREMENT,
    Name CHAR(100),
    Store VARCHAR(100)
);

-- Car Table
CREATE TABLE Car (
    CarID BIGINT PRIMARY KEY AUTO_INCREMENT,
    VIN VARCHAR(50) UNIQUE NOT NULL,
    Manufacturer CHAR(50),
    Model VARCHAR(100),
    Year INT CHECK (Year >= 2002),
    Color CHAR(30)
);

-- Invoices Table
CREATE TABLE Invoices (
    InvoiceID BIGINT PRIMARY KEY AUTO_INCREMENT,
    Date DATE NOT NULL,
    CarID BIGINT,
    CustomerID BIGINT,
    StaffID BIGINT,
    FOREIGN KEY (CarID) REFERENCES Car(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);
