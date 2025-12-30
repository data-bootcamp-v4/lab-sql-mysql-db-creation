CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS cars;


CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`VIN` VARCHAR(255) NOT NULL,
	`manufacturer` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`year` INT NOT NULL,
	`color` VARCHAR(255),
	PRIMARY KEY(`car_id`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`salesperson_id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`staff_id` INT NOT NULL,
	`name` VARCHAR(255),
	`store` VARCHAR(255),
	PRIMARY KEY(`salesperson_id`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`invoice_number` INT NOT NULL,
	`date` DATETIME,
	`car_id` INT NOT NULL,
	`client_id` INT NOT NULL,
	`salesperson_id` INT NOT NULL,
	PRIMARY KEY(`invoice_id`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`client_id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`customer_id` INT NOT NULL,
	`name` VARCHAR(255),
	`phone` VARCHAR(255),
	`email` VARCHAR(255),
	`address` VARCHAR(255),
	`city` VARCHAR(255),
	`state_province` VARCHAR(255),
	`country` VARCHAR(255),
	`postal_code` VARCHAR(255),
	PRIMARY KEY(`client_id`)
);


ALTER TABLE `invoices`
ADD FOREIGN KEY(`client_id`) REFERENCES `customers`(`client_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`salesperson_id`) REFERENCES `salespersons`(`salesperson_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;

SELECT constraint_name, column_name, referenced_table_name, referenced_column_name
FROM information_schema.key_column_usage
WHERE table_schema = DATABASE()
  AND table_name = 'invoices'
  AND referenced_table_name IS NOT NULL;
