CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Cars;

CREATE TABLE `Cars`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `vin` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NOT NULL
);

CREATE TABLE `Customers`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`cust_name` VARCHAR(255) NOT NULL,
    `cust_id` BIGINT NOT NULL,
    `cust_phone` VARCHAR(255) NOT NULL,
    `cust_email` VARCHAR(255),
    `cust_address` VARCHAR(255) NOT NULL,
    `cust_city` VARCHAR(255) NOT NULL,
    `cust_state` VARCHAR(255) NOT NULL,
    `cust_country` VARCHAR(255) NOT NULL,
    `cust_zipcode` BIGINT NOT NULL
);

CREATE TABLE `Salespersons`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `staff_id` BIGINT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL
);

CREATE TABLE `Invoices`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_number` BIGINT NOT NULL,
    `invoice_date` DATE NOT NULL,  
    `car` BIGINT UNSIGNED NOT NULL, 
    `customer` BIGINT UNSIGNED NOT NULL,
    `salesperson` BIGINT UNSIGNED NOT NULL
);

ALTER TABLE `Invoices` 
    ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`customer`) REFERENCES `Customers`(`id`);

ALTER TABLE `Invoices` 
    ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `Cars`(`id`);

ALTER TABLE `Invoices` 
    ADD CONSTRAINT `invoices_salesperson_foreign` FOREIGN KEY(`salesperson`) REFERENCES `Salespersons`(`id`);