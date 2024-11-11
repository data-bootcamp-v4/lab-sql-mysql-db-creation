CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS salespersons;
CREATE TABLE `salespersons`(
    `id` INT NOT NULL,
    `staff_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `store` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`staff_id`)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE `customers`(
    `id` INT NOT NULL,
    `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `phone_num` VARCHAR(30) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `adress` VARCHAR(100) NOT NULL,
    `city` VARCHAR(50) NOT NULL,
    `state_province` VARCHAR(50) NOT NULL,
    `country` VARCHAR(50) NOT NULL,
    `zip_postal` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`customer_id`)
);

DROP TABLE IF EXISTS cars;
CREATE TABLE `cars`(
    `id` INT NOT NULL,
    `VIN` VARCHAR(17) NOT NULL,
    `manufacturer` VARCHAR(50) NOT NULL,
    `model` VARCHAR(50) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`VIN`)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE `invoices`(
    `id` INT NOT NULL,
    `invoice_number` INT NOT NULL,
    `invoice_date` DATE NOT NULL,
    `car` VARCHAR(17) NOT NULL,
    `customer` INT UNSIGNED NOT NULL,
    `salesperson` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`invoice_number`),
    FOREIGN KEY (`customer`) REFERENCES `customers`(`customer_id`),
    FOREIGN KEY (`car`) REFERENCES `cars`(`VIN`),
    FOREIGN KEY (`salesperson`) REFERENCES `salespersons`(`staff_id`)
);
