CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE `Cars` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `VIN` VARCHAR(20) NOT NULL UNIQUE,
    `manufacturer` VARCHAR(20) NOT NULL,
    `model` VARCHAR(20) NOT NULL,
    `year` INT NOT NULL,
    `color` VARCHAR(10) NOT NULL
);

CREATE TABLE `Customers` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `customer_id` BIGINT UNSIGNED NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `phone_number` BIGINT NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `address` VARCHAR(40) NOT NULL,
    `city` VARCHAR(40) NOT NULL,
    `state_province` VARCHAR(40) NOT NULL,
    `country` VARCHAR(40) NOT NULL,
    `zip_code` BIGINT NOT NULL
);

CREATE TABLE `Salespersons` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `staff_id` BIGINT UNSIGNED NOT NULL UNIQUE,
    `name` VARCHAR(100) NOT NULL,
    `store` VARCHAR(100) NOT NULL
);

CREATE TABLE `Invoices` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `invoice_number` BIGINT UNSIGNED NOT NULL UNIQUE,
    `date` DATE NOT NULL,
    `car` INT UNSIGNED NOT NULL,
    `customer` INT UNSIGNED NOT NULL,
    `salesperson` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`car`) REFERENCES `Cars`(`id`),
    FOREIGN KEY (`customer`) REFERENCES `Customers`(`id`),
    FOREIGN KEY (`salesperson`) REFERENCES `Salespersons`(`id`)
);