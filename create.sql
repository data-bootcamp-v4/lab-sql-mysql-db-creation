CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE IF NOT EXISTS `cars` (
	`vehicle identification number` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`year` INTEGER NOT NULL,
	`color` CHAR(1) NOT NULL,
	`customer Id` BIGINT NOT NULL,
	PRIMARY KEY(`vehicle identification number`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`customer Id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` CHAR(1) NOT NULL,
	`phone number` INTEGER NOT NULL,
	`email` CHAR(1) NOT NULL,
	`address` VARCHAR(255) NOT NULL,
	`city` CHAR(1) NOT NULL,
	`state/province` CHAR(1) NOT NULL,
	`country` CHAR(1) NOT NULL,
	`zip/postal code` INTEGER NOT NULL,
	`staff Id` BIGINT NOT NULL,
	PRIMARY KEY(`customer Id`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`staff Id` BIGINT NOT NULL AUTO_INCREMENT UNIQUE,
	`name` CHAR(1) NOT NULL,
	`store` CHAR(1) NOT NULL,
	`customer Id` BIGINT NOT NULL,
	PRIMARY KEY(`staff Id`)
);

CREATE TABLE IF NOT EXISTS `Invoices` (
	`invoice number` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`date` DATE NOT NULL,
	`vehicle identification number` INTEGER NOT NULL,
	`customer Id` BIGINT,
	`staff Id` BIGINT,
	PRIMARY KEY(`invoice number`)
);


ALTER TABLE `Invoices`
ADD FOREIGN KEY(`customer Id`) REFERENCES `customers`(`customer Id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `salespersons`
ADD FOREIGN KEY(`staff Id`) REFERENCES `Invoices`(`staff Id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Invoices`
ADD FOREIGN KEY(`vehicle identification number`) REFERENCES `cars`(`vehicle identification number`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `customers`
ADD FOREIGN KEY(`customer Id`) REFERENCES `cars`(`customer Id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `salespersons`
ADD FOREIGN KEY(`customer Id`) REFERENCES `customers`(`customer Id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;