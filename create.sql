-- In this challenge, you will create the database and tables based on the database design you created in Challenge 1.
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS `invoices`;
DROP TABLE IF EXISTS `cars`;
DROP TABLE IF EXISTS `salespersons`;
DROP TABLE IF EXISTS `customers`;

CREATE TABLE `cars`(
    `car_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `VIN` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` INT NOT NULL,
    `color` VARCHAR(255) NOT NULL
);

CREATE TABLE `salespersons`(
    `staff_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL
);

CREATE TABLE `customers`(
    `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip_code` VARCHAR(255) NOT NULL
);

CREATE TABLE `invoices`(
    `invoice_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    `car_id` INT UNSIGNED NOT NULL,
    `customer_id` INT UNSIGNED NOT NULL,
    `staff_id` INT UNSIGNED NOT NULL
);

ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_car_id_foreign` FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`);

ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`);

ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_staff_id_foreign` FOREIGN KEY(`staff_id`) REFERENCES `salespersons`(`staff_id`);
