CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


	
CREATE TABLE `CARS`(
    `VIN` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` INT NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`VIN`)
);


CREATE TABLE `CUSTOMERS`(
    `customerID` VARCHAR(255) NOT NULL,
    `name_customer` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255),
    `email` VARCHAR(255) NOT NULL,
    `address` INT,
    `city` INT ,
    `state_province` INT ,
    `country` INT,
    `zip_postal_code` VARCHAR(255),
    PRIMARY KEY(`customerID`)
);

DROP TABLE IF EXISTS `SALESPERSONS`;
CREATE TABLE `SALESPERSONS`(
    `staffID` VARCHAR(255) NOT NULL,
    `name_salesperson` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    `customerID` VARCHAR(255),
    `manufacturer` VARCHAR(255),
    PRIMARY KEY(`staffID`)
);

DROP TABLE IF EXISTS `INVOICES`;
CREATE TABLE `INVOICES`(
    `invoice_number` VARCHAR(255) NOT NULL,
    `date` VARCHAR(255) NOT NULL,
    `model_car` VARCHAR(255) NOT NULL,
    `customerID` VARCHAR(255) NOT NULL,
    `name_salesperson` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`invoice_number`)
);

