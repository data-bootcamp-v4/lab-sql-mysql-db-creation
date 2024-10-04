-- Create the database
CREATE DATABASE CarSales;
USE CarSales;

-- Create the Cars table
CREATE TABLE Cars (
    Car_ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL UNIQUE,
    Manufacturer VARCHAR(100),
    Model VARCHAR(100),
    Year YEAR,
    Color VARCHAR(50)
);

-- Create the Customers table
CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    ZipCode VARCHAR(20)
);

-- Create the Salespersons table
CREATE TABLE Salespersons (
    Salesperson_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    StoreLocation VARCHAR(100)
);

-- Create the Invoices table
CREATE TABLE Invoices (
    Invoice_ID INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceNumber VARCHAR(50) NOT NULL UNIQUE,
    InvoiceDate DATE,
    Car_ID INT,
    Customer_ID INT,
    Salesperson_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID)
);
