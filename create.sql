CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
	Vin CHAR(20),  
    manufacturer VARCHAR(20),  
    model VARCHAR(20),  
    year YEAR,  
    colour TEXT,  
    CustomerID CHAR(20),
	PRIMARY KEY (Vin),
    FOREIGN KEY (CustomerID) REFERENCES customers (CustomerID)
);
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
	CustomerID CHAR(20),
    Name VARCHAR(20),
    phone_number VARCHAR(20),
    Email VARCHAR(20),
    Address VARCHAR(20),
    city VARCHAR(20),
    state_province VARCHAR(20),
    country VARCHAR(20),
    zip_postal_code VARCHAR(20),
    vin CHAR(20),
    FOREIGN KEY (vin) REFERENCES cars(vin),
    PRIMARY KEY (CustomerID)
    );
    
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	staffID CHAR(20),
    Name VARCHAR (20),
    store VARCHAR (20),
    customerID VARCHAR(20),
    PRIMARY KEY (staffID),
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
    );

DROP TABLE IF EXISTS Invoice;
CREATE TABLE Invoice (
	Invoicenumber CHAR(20),
    Date date,
    Car VARCHAR(20),
    Number VARCHAR(20),
    Salesperson VARCHAR(20),
	staffID CHAR(20),
    PRIMARY KEY (Invoicenumber),
    FOREIGN KEY (staffID) REFERENCES salespersons (staffID)
    );
    





    
    
    




