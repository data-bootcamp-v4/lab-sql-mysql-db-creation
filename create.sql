CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS `Cars` (
	`cars_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	 `vin` VARCHAR(50) UNIQUE NOT NULL,
	`color` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`manufactor` VARCHAR(255) NOT NULL,
	`year` YEAR NOT NULL,
	PRIMARY KEY(`cars_id`)
);

CREATE TABLE IF NOT EXISTS `customers` (
	`customer_pk` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`cust_id` VARCHAR(255) NOT NULL UNIQUE,
	`cust_name` VARCHAR(255) NOT NULL,
	`cust_zipcode` INTEGER NOT NULL,
	`cust_state` VARCHAR(255) NOT NULL,
	`cust_address` VARCHAR(255) NOT NULL,
	`cust_city` VARCHAR(255) NOT NULL,
	`cust_country` VARCHAR(255) NOT NULL,
	`cust_phone` INTEGER NOT NULL,
	PRIMARY KEY(`customer_pk`)
);

CREATE TABLE IF NOT EXISTS `Salespersons` (
	`salesperson_pk` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`staff_id` BIGINT NOT NULL UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`store` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`salesperson_pk`)
);

CREATE TABLE IF NOT EXISTS `Invoices` (
	`invoice_pk` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`invoice_number` BIGINT NOT NULL UNIQUE,
	`date` DATE NOT NULL,
	`cars_id` BIGINT NOT NULL,
	`customer_pk` BIGINT NOT NULL,
	`salesperson_pk` BIGINT NOT NULL,
	PRIMARY KEY(`invoice_pk`)
);

ALTER TABLE `Invoices`
ADD FOREIGN KEY(`cars_id`) REFERENCES `Cars`(`cars_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Invoices`
ADD FOREIGN KEY(`salesperson_pk`) REFERENCES `Salespersons`(`salesperson_pk`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Invoices`
ADD FOREIGN KEY(`customer_pk`) REFERENCES `customers`(`customer_pk`)
ON UPDATE NO ACTION ON DELETE NO ACTION;




