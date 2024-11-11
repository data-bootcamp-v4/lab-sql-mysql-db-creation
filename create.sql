CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS `Salespersons`;
CREATE TABLE `Salespersons`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `staff_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `cust_name` VARCHAR(255) NOT NULL,
    `cust_phone` VARCHAR(30),
    `cust_email` VARCHAR(50) NULL,
    `cust_address` VARCHAR(255) NOT NULL,
    `cust_city` VARCHAR(255) NOT NULL,
    `cust_state` VARCHAR(255) NULL,
    `cust_country` VARCHAR(255) NOT NULL,
    `cust_zipcode` VARCHAR(10),
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS `Invoices`;
CREATE TABLE `Invoices`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `invoice_number` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `car` BIGINT UNSIGNED NOT NULL,
    `customer` BIGINT UNSIGNED NOT NULL,
    `salesperson` BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS `Cars`;
CREATE TABLE `Cars`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `vin` BIGINT NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `Cars`(`id`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`customer`) REFERENCES `Customers`(`id`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_salesperson_foreign` FOREIGN KEY(`salesperson`) REFERENCES `Salespersons`(`id`);