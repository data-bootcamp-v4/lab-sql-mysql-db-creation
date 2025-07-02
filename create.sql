USE lab_mysql;
 DROP TABLE IF EXISTS Cars;
 -- Table: Cars
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(30)
);

 DROP TABLE IF EXISTS Customers;
-- Table: Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(150),
    City VARCHAR(50),
    StateOrProvince VARCHAR(50),
    Country VARCHAR(50),
    ZipOrPostalCode VARCHAR(20)
);
 DROP TABLE IF EXISTS Invoices;
 -- Table: Salespersons
CREATE TABLE Salespersons (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Store VARCHAR(100)
);

 DROP TABLE IF EXISTS Salesperson;
 -- Table: Invoices
CREATE TABLE Invoices (
    InvoiceNumber INT PRIMARY KEY AUTO_INCREMENT,
    Date DATE,
    CarVIN VARCHAR(17),
    CustomerID INT,
    StaffID INT,
    FOREIGN KEY (CarVIN) REFERENCES Cars(VIN) ON DELETE SET NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE SET NULL,
    FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID) ON DELETE SET NULL,
    UNIQUE (CarVIN) -- Ensures one car is sold once
);

