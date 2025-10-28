-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE `Cars` (
  `ID_Cars` INT AUTO_INCREMENT,
  `VIN` INT UNIQUE,
  `Manufacturer` VARCHAR(50) NOT NULL,
  `Model` VARCHAR(50) NOT NULL,
  `Year` YEAR NOT NULL,
  `Color` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`ID_Cars`)
);

CREATE TABLE `Customers` (
  `ID_Customers` INT AUTO_INCREMENT,
  `Customer_ID` INT UNIQUE,
  `Name` VARCHAR(100) NOT NULL,
  `Phone_Number` VARCHAR(20),
  `Email` VARCHAR(100),
  `Address` VARCHAR(255) NOT NULL,
  `City` VARCHAR(50) NOT NULL,
  `State_Province` VARCHAR(50),
  `Country` VARCHAR(50),
  `Postal_Code` VARCHAR(10),
  PRIMARY KEY (`ID_Customers`)
);

CREATE TABLE `Salespersons` (
  `ID_Salespersons` INT AUTO_INCREMENT,
  `Staff_ID` INT UNIQUE,
  `Name` VARCHAR(100) NOT NULL,
  `Store` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID_Salespersons`)
);

CREATE TABLE `Invoices` (
  `ID_Invoices` INT AUTO_INCREMENT,
  `Invoice_Number` INT UNIQUE,
  `Car_ID` INT NOT NULL,
  `Customer_ID` INT NOT NULL,
  `Salesperson_ID` INT NOT NULL,
  PRIMARY KEY (`ID_Invoices`),
  FOREIGN KEY (`Car_ID`) REFERENCES `Cars`(`ID_Cars`),
  FOREIGN KEY (`Customer_ID`) REFERENCES `Customers`(`ID_Customers`),
  FOREIGN KEY (`Salesperson_ID`) REFERENCES `Salespersons`(`ID_Salespersons`)
);



