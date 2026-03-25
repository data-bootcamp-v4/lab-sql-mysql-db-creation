CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` INTEGER NOT NULL,
	`vin` VARCHAR(255) NOT NULL UNIQUE,
	`manufacturer` VARCHAR(255) NOT NULL,
	`color` VARCHAR(255) NOT NULL,
	`year` INTEGER NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`car_id`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`sales_persons_id` INTEGER NOT NULL,
	`staff_id` VARCHAR(255) NOT NULL UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`store` VARCHAR(255) NOT NULL,
	`customer_id` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`sales_persons_id`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` VARCHAR(255) NOT NULL UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`phone_number` INTEGER NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`adress` VARCHAR(255) NOT NULL,
	`city` VARCHAR(255) NOT NULL,
	`state` VARCHAR(255) NOT NULL,
	`country` VARCHAR(255) NOT NULL,
	`zip` INTEGER NOT NULL,
	PRIMARY KEY(`customer_id`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_id` INTEGER NOT NULL UNIQUE,
	`invoice_number` BIGINT NOT NULL,
	`date` DATETIME NOT NULL,
	`car_id` INTEGER NOT NULL,
	`sales_person_id` INTEGER NOT NULL,
	PRIMARY KEY(`invoice_id`)
);


CREATE TABLE IF NOT EXISTS `purchase` (
	`purchase_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`sales_persons_id` INTEGER NOT NULL,
	`customer_id` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`purchase_id`)
);


ALTER TABLE `invoices`
ADD FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`sales_person_id`) REFERENCES `salespersons`(`sales_persons_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `purchase`
ADD FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `purchase`
ADD FOREIGN KEY(`sales_persons_id`) REFERENCES `salespersons`(`sales_persons_id`)
ON UPDATE CASCADE ON DELETE CASCADE;