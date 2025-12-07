CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS `cars` (
    `car_ID` BIGINT NOT NULL AUTO_INCREMENT,
    `VIN` VARCHAR(255) NOT NULL UNIQUE,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255),
    PRIMARY KEY(`car_ID`)
);

CREATE TABLE IF NOT EXISTS `customers` (
    `Cu_ID` BIGINT NOT NULL AUTO_INCREMENT,
    `customer_ID` VARCHAR(255) NOT NULL UNIQUE,
    `customer_name` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255),
    `email` VARCHAR(255),
    `address` VARCHAR(255),
    `city` VARCHAR(255),
    `state` VARCHAR(255),
    `country` VARCHAR(255),
    `zip` VARCHAR(255),
    PRIMARY KEY(`Cu_ID`)
);

CREATE TABLE IF NOT EXISTS `salesperson` (
    `s_ID` BIGINT NOT NULL AUTO_INCREMENT,
    `staff_ID` VARCHAR(255) NOT NULL UNIQUE,
    `staff_name` VARCHAR(255) NOT NULL,
    `store_name` VARCHAR(255),
    PRIMARY KEY(`s_ID`)
);

CREATE TABLE IF NOT EXISTS `invoices` (
    `i_ID` BIGINT NOT NULL AUTO_INCREMENT,
    `invoice_number` BIGINT NOT NULL UNIQUE,
    `date` DATE NOT NULL,
    `car_ID` BIGINT NOT NULL,
    `customer_ID` VARCHAR(255) NOT NULL,
    `staff_ID` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`i_ID`)
);

ALTER TABLE `invoices`
ADD FOREIGN KEY(`customer_ID`) REFERENCES `customers`(`customer_ID`)
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE `invoices`
ADD FOREIGN KEY(`staff_ID`) REFERENCES `salesperson`(`staff_ID`)
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE `invoices`
ADD FOREIGN KEY(`car_ID`) REFERENCES `cars`(`car_ID`)
ON UPDATE NO ACTION ON DELETE NO ACTION;