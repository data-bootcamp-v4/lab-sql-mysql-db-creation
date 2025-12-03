CREATE DATABASE Lab_MySQL_Database_Creation
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
USE Lab_MySQL_Database_Creation;


CREATE TABLE IF NOT EXISTS `Store` (
	`store_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`adress` VARCHAR(255),
	PRIMARY KEY(`store_id`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`address` VARCHAR(255),
	`postal_code` VARCHAR(10),
	`phone_number` VARCHAR(15),
	`email` VARCHAR(255),
	`city` VARCHAR(255),
	`state` VARCHAR(255),
	`country_id` BIGINT,
	`car_id` BIGINT,
	PRIMARY KEY(`customer_id`)
);


CREATE TABLE IF NOT EXISTS `salespersons ` (
	`staff_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`adress` VARCHAR(255),
	`store_id` BIGINT NOT NULL,
	PRIMARY KEY(`staff_id`)
);


CREATE TABLE IF NOT EXISTS `cars` (
	`car_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`VIN` VARCHAR(255),
	`color ` VARCHAR(255),
	`year` INTEGER,
	`model` VARCHAR(255),
	`manufacturer` VARCHAR(255),
	PRIMARY KEY(`car_id`)
);


CREATE TABLE IF NOT EXISTS `country` (
	`country_id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`iso_code` CHAR(1),
	`Currency` VARCHAR(255),
	PRIMARY KEY(`country_id`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_number` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`date` DATETIME NOT NULL,
	`total_amount` FLOAT NOT NULL,
	`customer_id` BIGINT NOT NULL,
	`car_id` BIGINT,
	PRIMARY KEY(`invoice_number`)
);


CREATE TABLE IF NOT EXISTS `SalesStore` (
	`id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`staff_id` BIGINT NOT NULL,
	`car_id` BIGINT NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `CustomerCar` (
	`id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`date` DATETIME,
	`customer_id` BIGINT,
	`car_id` BIGINT,
	PRIMARY KEY(`id`)
);


ALTER TABLE `invoices`
ADD FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `salespersons `
ADD FOREIGN KEY(`store_id`) REFERENCES `Store`(`store_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `SalesStore`
ADD FOREIGN KEY(`staff_id`) REFERENCES `salespersons `(`staff_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `CustomerCar`
ADD FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `CustomerCar`
ADD FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `SalesStore`
ADD FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `customers`
ADD FOREIGN KEY(`country_id`) REFERENCES `country`(`country_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;