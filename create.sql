CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS `cars` (
	`vin` VARCHAR(255) UNIQUE,
	`manufacturer` VARCHAR(255),
	`model` VARCHAR(255),
	`year` INTEGER,
	`color` VARCHAR(255),
	PRIMARY KEY(`vin`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`cust_id` INTEGER NOT NULL AUTO_INCREMENT,
	`cust_name` VARCHAR(255),
	`cust_phone` VARCHAR(255),
	`cust_city` VARCHAR(255),
	`cust_state` VARCHAR(255),
	`cust_country` VARCHAR(255),
	PRIMARY KEY(`cust_id`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`staff_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`store` VARCHAR(255),
	PRIMARY KEY(`staff_id`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_number` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`date` DATE,
	`vin_car` VARCHAR(255) UNIQUE,
	`customer_id` INTEGER UNIQUE,
	`staff_id` INTEGER UNIQUE,
	PRIMARY KEY(`invoice_number`)
);

ALTER TABLE `invoices`
ADD CONSTRAINT `cars_ibfk_1`
FOREIGN KEY (`vin_car`) 
REFERENCES `cars`(`vin`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`staff_id`) 
REFERENCES `salespersons`(`staff_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `customers`
ADD FOREIGN KEY(`cust_id`) 
REFERENCES `invoices`(`customer_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;