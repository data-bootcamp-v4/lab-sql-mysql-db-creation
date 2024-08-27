CREATE DATABASE IF NOT EXISTS car_dealership;
USE car_dealership;

CREATE TABLE `customers` (
    `customers_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` BIGINT NOT NULL,
    `name` TEXT NOT NULL,
    `phone_number` VARCHAR(20) NOT NULL,
    `email` TEXT NOT NULL,
    `address` TEXT NOT NULL,
    `city` TEXT NOT NULL,
    `state` TEXT NOT NULL,
    `country` TEXT NOT NULL,
    `postal_code` CHAR(5) NOT NULL,
    UNIQUE (`customer_id`)
);

CREATE TABLE `salespersons` (
    `salespersons_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `staff_id` BIGINT NOT NULL,
    `store` TEXT NOT NULL,
    UNIQUE (`staff_id`)
);

CREATE TABLE `cars` (
    `cars_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `vin` VARCHAR(17) NOT NULL,
    `manufacturer` TEXT NOT NULL,
    `model` TEXT NOT NULL,
    `year` CHAR(4) NOT NULL,
    `color` TEXT NOT NULL,
    UNIQUE (`vin`)
);

CREATE TABLE `invoices` (
    `invoices_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `number` BIGINT NOT NULL,
    `date` DATE NOT NULL,
    `car` VARCHAR(17) NOT NULL,
    `customer` BIGINT NOT NULL,
    `salesperson` BIGINT NOT NULL,
    UNIQUE (`number`),
    FOREIGN KEY (`customer`) REFERENCES `customers`(`customer_id`),
    FOREIGN KEY (`salesperson`) REFERENCES `salespersons`(`staff_id`),
    FOREIGN KEY (`car`) REFERENCES `cars`(`vin`)
);