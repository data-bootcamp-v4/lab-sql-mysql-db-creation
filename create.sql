CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS `invoices`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `cars`;
DROP TABLE IF EXISTS `salespersons`;



CREATE TABLE IF NOT EXISTS `salespersons` (
	`salesperson_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`staff_id` VARCHAR(50) NOT NULL UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`store` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`salesperson_id`)
);

CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`vin` VARCHAR(255) NOT NULL UNIQUE,
	`manufacturer` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`year` YEAR NOT NULL,
	`color` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`car_id`)
);

CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`phone` VARCHAR(50) NOT NULL,
	`address` VARCHAR(255) NULL,   
	`city` VARCHAR(255) NULL,
	`state` VARCHAR(255) NULL,
	`country` VARCHAR(255) NULL,
	`zip_code` VARCHAR(50) NULL,
	PRIMARY KEY(`customer_id`)
);



CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	`invoice_n` INTEGER NOT NULL UNIQUE,
	`customer_id` INTEGER UNSIGNED NOT NULL,
	`car_id` INTEGER UNSIGNED NOT NULL,
	`salesperson_id` INTEGER UNSIGNED NOT NULL,
	PRIMARY KEY(`invoice_id`)
);



ALTER TABLE `invoices`
ADD CONSTRAINT `fk_invoices_salespersons`
FOREIGN KEY(`salesperson_id`) REFERENCES `salespersons`(`salesperson_id`)
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE `invoices`
ADD CONSTRAINT `fk_invoices_cars`
FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`)
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE `invoices`
ADD CONSTRAINT `fk_invoices_customers`
FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`)
ON UPDATE CASCADE ON DELETE RESTRICT;