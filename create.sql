CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE IF NOT EXISTS `Cars` (
	`car_id` INTEGER NOT NULL AUTO_INCREMENT,
	`vehicle_identification_number` VARCHAR(255) NOT NULL UNIQUE,
	`manufacturer` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`year` INTEGER NOT NULL,
	`color` CHAR(1) NOT NULL,
	PRIMARY KEY(`car_id`)
);


CREATE TABLE IF NOT EXISTS `Customers` (
	`customer_id` VARCHAR(255) NOT NULL UNIQUE,
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`customer_name` CHAR(1) NOT NULL,
	`customer_phone_number` INTEGER NOT NULL,
	`customer_email` VARCHAR(255) NOT NULL,
	`customer_address` VARCHAR(255) NOT NULL,
	`customer_cityname` CHAR(1) NOT NULL,
	`customer_state_province` CHAR(1) NOT NULL,
	`customer_country_name` CHAR(1) NOT NULL,
	`customer_postal_code` INTEGER NOT NULL,
	PRIMARY KEY(`customer_id`)
);


CREATE TABLE IF NOT EXISTS `Salesperson` (
	`staff_id` INTEGER NOT NULL UNIQUE,
	`staff_name` CHAR(1) NOT NULL,
	`store_name` VARCHAR(255) NOT NULL,
	`sales_ID` INTEGER NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(`staff_id`)
);


CREATE TABLE IF NOT EXISTS `Invoices` (
	`invoice_ID` INTEGER NOT NULL AUTO_INCREMENT,
	`invoice_number` INTEGER NOT NULL UNIQUE,
	`invoice_date` DATE NOT NULL,
	`car_id` INTEGER NOT NULL,
	`customer_id` VARCHAR(255) NOT NULL,
	`sales_ID` INTEGER NOT NULL,
	PRIMARY KEY(`invoice_ID`)
);


ALTER TABLE `Cars`
ADD FOREIGN KEY(`car_id`) REFERENCES `Invoices`(`car_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Invoices`
ADD FOREIGN KEY(`sales_ID`) REFERENCES `Salesperson`(`sales_ID`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Customers`
ADD FOREIGN KEY(`customer_id`) REFERENCES `Invoices`(`customer_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;