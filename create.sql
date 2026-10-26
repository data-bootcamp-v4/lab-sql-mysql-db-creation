CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE IF NOT EXISTS `cars` (
	`car` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`vin` VARCHAR(255) NOT NULL,
	`manufacturer` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`year` VARCHAR(255) NOT NULL,
	`color` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`car`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`customer` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`cust_id` BIGINT NOT NULL,
	`cust_name` VARCHAR(255) NOT NULL,
	`cust_phone` VARCHAR(255) NOT NULL,
	`cust_email` VARCHAR(255),
	`cust_address` VARCHAR(255) NOT NULL,
	`cust_city` VARCHAR(255) NOT NULL,
	`cust_state` VARCHAR(255) NOT NULL,
	`cust_country` VARCHAR(255) NOT NULL,
	`cust_zipcode` INTEGER NOT NULL,
	PRIMARY KEY(`customer`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`salesperson` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`staff_id` BIGINT NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`store` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`salesperson`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_number` BIGINT NOT NULL UNIQUE,
	`date` DATETIME NOT NULL,
	`car` BIGINT NOT NULL,
	`customer` BIGINT NOT NULL,
	`salesperson` BIGINT NOT NULL,
	PRIMARY KEY(`invoice_number`)
);


ALTER TABLE `invoices`
ADD FOREIGN KEY(`car`) REFERENCES `cars`(`car`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`customer`) REFERENCES `customers`(`customer`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`salesperson`) REFERENCES `salespersons`(`salesperson`)
ON UPDATE NO ACTION ON DELETE NO ACTION;