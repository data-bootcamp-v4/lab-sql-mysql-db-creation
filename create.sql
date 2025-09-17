CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS Invoice;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS customer;

CREATE TABLE `customer` (
    `customer_ID` INT NOT NULL,
    `customer_auto_id` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip_code` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`customer_auto_id`)
);

CREATE TABLE `Cars` (
    `identification_number_VIN` CHAR(17) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`identification_number_VIN`)
);

CREATE TABLE `Salespersons` (
    `salesperson_auto_id` INT NOT NULL,
    `staff_ID` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`salesperson_auto_id`)
);

CREATE TABLE `Invoice` (
    `invoice_auto_id` INT NOT NULL,
    `number` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    `car` CHAR(17) NOT NULL,
    `customer` VARCHAR(255) NOT NULL,
    `salesperson` INT NOT NULL,
    PRIMARY KEY(`invoice_auto_id`),
    FOREIGN KEY(`customer`) REFERENCES `customer`(`customer_auto_id`),
    FOREIGN KEY(`salesperson`) REFERENCES `Salespersons`(`salesperson_auto_id`),
    FOREIGN KEY(`car`) REFERENCES `Cars`(`identification_number_VIN`)
);
