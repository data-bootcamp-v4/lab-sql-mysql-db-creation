CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Cars;
CREATE TABLE `Cars` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `VIN` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `modelo` VARCHAR(255) NOT NULL,
    `year` BIGINT NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE `Customers` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `customer_ID` BIGINT NOT NULL UNIQUE,
    `name` VARCHAR(255) NOT NULL,
    `phone` BIGINT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state_province` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip_postal_code` BIGINT NOT NULL,
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS Salesperson;
CREATE TABLE `Salesperson` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `staff_ID` BIGINT NOT NULL UNIQUE,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE `Invoices` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `invoice_number` BIGINT NOT NULL UNIQUE,
    `date` DATE NOT NULL,
    `car` BIGINT NOT NULL,
    `customer_ID` BIGINT NOT NULL,
    `staff_ID` BIGINT NOT NULL,
    PRIMARY KEY(`id`)
);

ALTER TABLE `Invoices` 
    ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `Cars`(`id`);

ALTER TABLE `Invoices` 
    ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`customer_ID`) REFERENCES `Customers`(`customer_ID`);

ALTER TABLE `Invoices` 
    ADD CONSTRAINT `invoices_staff_foreign` FOREIGN KEY(`staff_ID`) REFERENCES `Salesperson`(`staff_ID`);