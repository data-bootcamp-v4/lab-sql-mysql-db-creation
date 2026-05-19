CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`vin` VARCHAR(255) NOT NULL,
	`manufacturer` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`year` INTEGER NOT NULL,
	`color` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`car_id`)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`cust_id` BIGINT NOT NULL,
	`cust_name` VARCHAR(255) NOT NULL,
	`cust_phone` VARCHAR(255) NOT NULL,
	`cust_email` VARCHAR(255),
	`cust_address` VARCHAR(255) NOT NULL,
	`cust_city` VARCHAR(255) NOT NULL,
	`cust_state` VARCHAR(255) NOT NULL,
	`cust_country` VARCHAR(255) NOT NULL,
	`cust_zipcode` BIGINT NOT NULL,
	PRIMARY KEY(`customer_id`)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE IF NOT EXISTS `salespersons` (
	`salesperson_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`staff_id` BIGINT NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`store` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`salesperson_id`)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`invoice_number` INTEGER NOT NULL,
	`date` DATE NOT NULL,
	`car_id` BIGINT UNSIGNED NOT NULL,
	`customer_id` BIGINT UNSIGNED NOT NULL,
	`salesperson_id` BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY(`invoice_id`)
);


ALTER TABLE `invoices`
ADD FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`salesperson_id`) REFERENCES `salespersons`(`salesperson_id`)
ON UPDATE CASCADE ON DELETE CASCADE;