
CREATE DATABASE IF NOT EXISTS lab_1;

USE lab_1;

DROP TABLE IF EXISTS `invoices`;
DROP TABLE IF EXISTS `cars`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `sales`;


CREATE TABLE `cars` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `vin` VARCHAR(50) NOT NULL,
    `manufacturer` VARCHAR(50) NOT NULL,
    `car_model` VARCHAR(50) NOT NULL,
    `year` INT NOT NULL,
    `car_color` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`)
);

CREATE TABLE `customers` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`customer_ID` INT NOT NULL,
    `customer_name` VARCHAR(50) NOT NULL,
	`phone_number` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `address` VARCHAR(100) NOT NULL,
    `city` VARCHAR(50) NOT NULL,
    `state_province` VARCHAR(50) NOT NULL,
	`country` VARCHAR(50) NOT NULL,
	`zip_postal_code` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT unique_customer_id UNIQUE (`customer_ID`)
);

CREATE TABLE `sales` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`sales_ID` VARCHAR(50) NOT NULL,
    `sales_name` VARCHAR(50) NOT NULL,
    `store` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT unique_staff_id UNIQUE (`sales_ID`)
);

CREATE TABLE `invoices` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `invoice_number` VARCHAR(50) NOT NULL,
    `date` DATE NOT NULL,
	`car_ID` INT UNSIGNED NOT NULL,
	`customer_ID` INT UNSIGNED NOT NULL,
    `sales_ID` INT UNSIGNED NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT fk_car_id FOREIGN KEY (`car_ID`) REFERENCES `cars` (`id`), 
CONSTRAINT fk_customer_id FOREIGN KEY (`customer_ID`) REFERENCES `customers` (`id`),
CONSTRAINT fk_sales_id FOREIGN KEY (`sales_ID`) REFERENCES `sales` (`id`),
CONSTRAINT unique_invoice_number UNIQUE (`invoice_number`)
);


