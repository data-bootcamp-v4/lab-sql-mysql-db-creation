CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS Cars;
CREATE TABLE `Cars` (
  `VIN` VARCHAR(50),
  `Colour` VARCHAR(50),
  `Model` VARCHAR(50),
  `Year` INT,
  `Manufacturer` VARCHAR(50),
  PRIMARY KEY (`VIN`)
);

CREATE TABLE `Salespersons` (
  `StaffID` INT,
  `Name` VARCHAR(50),
  `Store` VARCHAR(50),
  PRIMARY KEY (`StaffID`)
);

CREATE TABLE `Customers` (
  `CustomerID` INT,
  `Name` VARCHAR(50),
  `Email` VARCHAR(50),
  `Phone_number` VARCHAR(50),
  `City` VARCHAR(50),
  PRIMARY KEY (`CustomerID`)
);

CREATE TABLE `Invoices` (
  `InvoiceID` INT,
  `Invoice_nr` VARCHAR(50),
  `Manufacturer` VARCHAR(50),
  `SalespersonID` INT,
  `Date` Date,
  PRIMARY KEY (`InvoiceID`),
  FOREIGN KEY (`Invoice_nr`) REFERENCES `Salespersons`(`StaffID`),
  FOREIGN KEY (`SalespersonID`) REFERENCES `Customers`(`CustomerID`)
);

