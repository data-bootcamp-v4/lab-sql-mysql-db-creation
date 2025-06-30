CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Invoices;

CREATE TABLE `Invoices` (
  `InvoiceID` int,
  `CustomerID` int,
  `InvoiceNumber` int,
  `CarID` int,
  `Date` Date,
  `SalesPersonID` int,
  PRIMARY KEY (`InvoiceID`),
  FOREIGN KEY (`CustomerID`) REFERENCES Customers(`CustomerID`),
  FOREIGN KEY (`CarID`) REFERENCES Cars(`CarID`),
  FOREIGN KEY (`SalesPersonID`) REFERENCES Salespersons(`StaffID`)
);

DROP TABLE IF EXISTS Customers;

CREATE TABLE `Customers` (
  `CustomerID` int,
  `Cust_ID` int,
  `Cust_Name` varchar(255),
  `Cust_Phone` varchar(255),
  `Cust_Address` varchar(255),
  `Cust_State` varchar(255),
  `Cust_Zipcode` varchar(255),
  `Cust_Email` varchar(255),
  `Cust_City` varchar(255),
  `Cust_Country` varchar(255),
  PRIMARY KEY (`CustomerID`)
);

DROP TABLE IF EXISTS Salespersons;

CREATE TABLE `Salespersons` (
  `StaffID` int,
  `Name` varchar(255),
  `Store` varchar(255),
  `Staff_id` int,
  PRIMARY KEY (`StaffID`)
);

DROP TABLE IF EXISTS Cars;

CREATE TABLE `Cars` (
  `CarID` int,
  `Vin` varchar(255),
  `manufacturer` varchar(255),
  `Model` varchar(255),
  `Year` int,
  `Color` varchar(255),
  PRIMARY KEY (`CarID`)
);

