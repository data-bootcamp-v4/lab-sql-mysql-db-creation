CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Crear tabla cars

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    VIN VARCHAR(17) PRIMARY KEY,  -- (Primary Key)
    Manufacturer VARCHAR(50),      
    Model VARCHAR(50),             
    Year INT,                      
    Color VARCHAR(20)              
);

-- Crear tabla customers

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,  -- ID del cliente (Primary Key)
    Name VARCHAR(100),                          
    PhoneNumber VARCHAR(15),                    
    Email VARCHAR(50),                         
    Address VARCHAR(100),                       
    City VARCHAR(50),                          
    StateProvince VARCHAR(50),                  
    Country VARCHAR(50),                      
    PostalCode VARCHAR(10)                      
);

-- Crear tabla salespersons

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
    SalespersonID INT AUTO_INCREMENT PRIMARY KEY,  -- ID del vendedor (Primary Key)
    Name VARCHAR(100),                             
    Store VARCHAR(50)                              
);

-- Crear tabla invoices

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,  -- Número de factura (Primary Key)
    Date DATE,                                
    VIN VARCHAR(17),                          
    CustomerID INT,                           
    SalespersonID INT,                       
    
    -- Definición de las claves foráneas
    FOREIGN KEY (VIN) REFERENCES cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (SalespersonID) REFERENCES salespersons(SalespersonID)
);