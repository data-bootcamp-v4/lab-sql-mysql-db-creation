CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS salespersons;
CREATE TABLE `salespersons` (
    `staff_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` CHAR(255) NOT NULL,
    `store` CHAR(255) NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE `customers` (
    `customer_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` CHAR(255) NOT NULL,
    `phone_number` VARCHAR(15) NOT NULL,  
    `email` CHAR(255) NOT NULL,
    `address` CHAR(255) NOT NULL,
    `city` CHAR(255) NOT NULL,
    `state_province` CHAR(255) NOT NULL, 
    `country` CHAR(255) NOT NULL,
    `zip_postal_code` VARCHAR(10) NOT NULL  
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE `invoices` (
    `invoice_number` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    `VIN` BIGINT UNSIGNED NOT NULL,
    `customer_ID` BIGINT UNSIGNED NOT NULL,  
    `staff_ID` BIGINT UNSIGNED NOT NULL
);

DROP TABLE IF EXISTS cars;
CREATE TABLE `cars` (
    `VIN` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `manufacturer` CHAR(255) NOT NULL,
    `model` CHAR(255) NOT NULL,
    `year` BIGINT NOT NULL,
    `color` CHAR(255) NOT NULL
);

ALTER TABLE `invoices`
    ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_ID`) REFERENCES `customers`(`customer_ID`),
    ADD CONSTRAINT `invoices_staff_id_foreign` FOREIGN KEY (`staff_ID`) REFERENCES `salespersons`(`staff_ID`),
    ADD CONSTRAINT `invoices_vin_foreign` FOREIGN KEY (`VIN`) REFERENCES `cars`(`VIN`);
