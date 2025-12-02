CREATE DATABASE IF NOT EXISTS lab_mysql1;
USE lab_mysql1;

CREATE TABLE IF NOT EXISTS `Salespersons` (
    `id_staff` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255),
    `Store` VARCHAR(255),
    PRIMARY KEY (`id_staff`));
    DESCRIBE Salespersons;



CREATE TABLE IF NOT EXISTS `Invoices` (
    `invoice_id` INT NOT NULL AUTO_INCREMENT,
    `invoice_number` BIGINT,
    `date` DATE,
    `id_car` BIGINT,
    `id_customer` BIGINT,
    `id_staff` BIGINT,
    PRIMARY KEY (`invoice_id`),
    FOREIGN KEY (`id_car`) REFERENCES `Cars`(`id_car`),
    FOREIGN KEY (`id_customer`) REFERENCES `Customers`(`id_customer`),
    FOREIGN KEY (`id_staff`) REFERENCES `Salespersons`(`id_staff`));



CREATE TABLE IF NOT EXISTS `Cars` (
    `id_car` BIGINT NOT NULL AUTO_INCREMENT,
    `vin` VARCHAR(255),
    `manufacturer` VARCHAR(255),
    `model` VARCHAR(255),
    `year` DATE,
    `color_cars` VARCHAR(255),
    PRIMARY KEY (`id_car`));



CREATE TABLE IF NOT EXISTS `Customers` (
    `id_customer` BIGINT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(255),
    `Phone_Number` VARCHAR(255),
    `Email` VARCHAR(255),
    `Address` VARCHAR(255),
    `City` VARCHAR(255),
    `State` VARCHAR(255),
    `Country` VARCHAR(255),
    `Postal_code` VARCHAR(255),
    PRIMARY KEY (`id_customer`));





DESCRIBE Salespersons;
