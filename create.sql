CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `VIN` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` int NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`VIN`),
  UNIQUE KEY `VIN_UNIQUE` (`VIN`));
  
  DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customersID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phonenumber` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state/province` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zip code` int NOT NULL,
  PRIMARY KEY (`customersID`),
  UNIQUE KEY `idCustomers_UNIQUE` (`customersID`));
  
DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `invoicesID` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `VIN` int NOT NULL,
  `customersID` int NOT NULL,
  `staffID` int NOT NULL,
  PRIMARY KEY (`invoicesID`),
  UNIQUE KEY `invoicesID_UNIQUE` (`invoicesID`),
  KEY `customerID_idx` (`customersID`),
  KEY `VIN_idx` (`VIN`),
  KEY `staffID_idx` (`staffID`),
  CONSTRAINT `customersID` FOREIGN KEY (`customersID`) REFERENCES `customers` (`customersID`),
  CONSTRAINT `staffID` FOREIGN KEY (`staffID`) REFERENCES `salespersons` (`staffID`),
  CONSTRAINT `VIN` FOREIGN KEY (`VIN`) REFERENCES `cars` (`VIN`));
  
  DROP TABLE IF EXISTS `stores`;

CREATE TABLE `stores` (
  `storeID` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(15) NOT NULL,
  `store_address` varchar(45) NOT NULL,
  `store_city` varchar(20) NOT NULL,
  `store_state` varchar(20) NOT NULL,
  `zipcode` int NOT NULL,
  PRIMARY KEY (`storeID`));
  
  DROP TABLE IF EXISTS `salespersons`;

CREATE TABLE `salespersons` (
  `staffID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `storeID` int NOT NULL,
  PRIMARY KEY (`staffID`),
  UNIQUE KEY `staffID_UNIQUE` (`staffID`),
  KEY `storeID_idx` (`storeID`),
  CONSTRAINT `storeID` FOREIGN KEY (`storeID`) REFERENCES `stores` (`storeID`));
  
ALTER TABLE lab_mysql.customers 
MODIFY phonenumber VARCHAR(15);

ALTER TABLE lab_mysql.customers 
MODIFY `zip code` VARCHAR(10);

ALTER TABLE lab_mysql.salespersons DROP FOREIGN KEY storeID;
ALTER TABLE lab_mysql.salespersons DROP INDEX storeID_idx;
DROP TABLE lab_mysql.stores;

ALTER TABLE lab_mysql.salespersons 
CHANGE COLUMN storeID store VARCHAR(20);