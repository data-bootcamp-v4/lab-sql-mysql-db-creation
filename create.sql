CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS `sales_persons`;
CREATE TABLE `sales_persons`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `staff_id` INT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `store` VARCHAR(25) NOT NULL,
    PRIMARY KEY(`id`)
);
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `customer ID` INT UNSIGNED NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `phone number` VARCHAR(20) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `address` VARCHAR(100) NOT NULL,
    `city` VARCHAR(15) NOT NULL,
    `state` VARCHAR(15) NOT NULL,
    `country` VARCHAR(15) NOT NULL,
    `ZIP` INT NOT NULL,
    PRIMARY KEY(`id`)
);
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `VIN` VARCHAR(17) NOT NULL,
    `manufacturer` VARCHAR(20) NOT NULL,
    `model` VARCHAR(30) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(10) NOT NULL,
    PRIMARY KEY(`id`)
);
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `invoice_number` INT UNSIGNED NOT NULL,
    `date` VARCHAR(20) NOT NULL,
    `car` INT NOT NULL,
    `customer` INT NOT NULL,
    `sales_person` INT NOT NULL,
    PRIMARY KEY(`id`)
    );
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_sales_person_foreign` FOREIGN KEY(`sales_person`) REFERENCES `sales_persons`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `cars`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`customer`) REFERENCES `customers`(`id`);