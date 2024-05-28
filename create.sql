CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
CustomerID INT PRIMARY KEY, 
FirstName VARCHAR(40), 
LastName VARCHAR(20), 
Phone CHAR(10), 
Email VARCHAR(40), 
Address VARCHAR(40), 
City VARCHAR(20), 
State VARCHAR(20), 
Country VARCHAR(20), 
Zip CHAR(6)
);

DROP TABLE IF EXISTS salesperson;

CREATE TABLE salesperson (
StaffID INT PRIMARY KEY,
FirstName VARCHAR(40),
LastName VARCHAR(20),
Store CHAR(40)
);

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
CarID CHAR(17) PRIMARY KEY,
Model VARCHAR(20),
Manufacturer VARCHAR(20),
Color VARCHAR(20),
Year YEAR
);

DROP TABLE IF EXISTS invoice;

CREATE TABLE invoice (
InvoiceID INT PRIMARY KEY,
InvDate DATETIME,
CarID CHAR(17),
CustomerID INT,
StaffID INT
);

