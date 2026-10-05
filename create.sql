CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	VIN int PRIMARY KEY,
    Manufacturer VARCHAR(30),
    Model Varchar(30),
    `Year` Year,
    Color CHAR(7)
    
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	CustomerID int PRIMARY KEY,
    `Name` VARCHAR(30),
    Phone varchar(30),
    Email VARCHAR(50),
    Address VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    `Postal Code` Integer
);

DROP TABLE IF EXISTS Salesperson;
CREATE TABLE Salesperson (
	`Staff ID` int PRIMARY KEY,
    `Name` VARCHAR(30),
    Store VARCHAR(50)
);
DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
	`Invoice N` int PRIMARY KEY,
    `Date` date,
    VIN integer,
	CustomerID integer,
    `Staff ID` integer);

SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM Salesperson;
SELECT * FROM Invoices;
#Update 