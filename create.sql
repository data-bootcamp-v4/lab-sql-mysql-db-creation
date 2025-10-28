-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop existing tables
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Cars;

CREATE TABLE `Cars` (
  `ID_Cars` INT AUTO_INCREMENT,
  `VIN` INT,
  `Manufacturer` VARCHAR(50) NOT NULL,
  `Model` VARCHAR(50) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`VIN`)
);

CREATE TABLE `Customers` (
  `ID_Customers` INT AUTO_INCREMENT,
  `Customer_ID` INT,
  `Name` VARCHAR(100) NOT NULL,
  `Phone_Number` VARCHAR(20),
  `Email` VARCHAR(100),
  `Address` VARCHAR(255) NOT NULL,
  `City` VARCHAR(50) NOT NULL,
  `State_Province` VARCHAR(50),
  `Country` VARCHAR(50),
  `Postal_Code` VARCHAR(10),
  PRIMARY KEY (`Customer_ID`)
);

CREATE TABLE `Salespersons` (
  `ID_Salespersons` INT AUTO_INCREMENT,
  `Staff_ID` INT,
  `Name` VARCHAR(100) NOT NULL,
  `Store` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Staff_ID`)
);

CREATE TABLE `Invoices` (
  `ID_Invoices` INT AUTO_INCREMENT,
  `Invoice_Number` INT,
  `Car_VIN` INT NOT NULL,
  `Customer_ID` INT NOT NULL,
  `Salesperson_ID` INT NOT NULL,
  PRIMARY KEY (`Invoice_Number`),
  FOREIGN KEY (`Car_VIN`) REFERENCES `Cars`(`VIN`),
  FOREIGN KEY (`Customer_ID`) REFERENCES `Customers`(`Customer_ID`),
  FOREIGN KEY (`Salesperson_ID`) REFERENCES `Salespersons`(`Staff_ID`)
);

