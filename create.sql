CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS `customers` (
	`id` INTEGER,
	`cust_id` INTEGER NOT NULL UNIQUE,
	`cust_name` CHAR(255),
	`cust_phone` VARCHAR(255),
	`cust_email` VARCHAR(255),
	`cust_address` VARCHAR(255),
	`cust_city` CHAR(255),
	`cust_state` VARCHAR(255),
	`cust_country` CHAR(255),
	`cust_zipcode` INTEGER,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`id` INTEGER,
	`staff_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`store` CHAR(255),
    PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `Invoices` (
	`id` INTEGER,
	`invoice_number` INTEGER NOT NULL UNIQUE,
	`date` DATE,
	`car` VARCHAR(255) ,
	`customer` INTEGER,
	`staff_id` INTEGER,
    PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `cars` (
	`id` INTEGER,
	`vin` VARCHAR(255) NOT NULL UNIQUE,
	`manufacturer` CHAR(255),
	`model` CHAR(255),
	`year` YEAR,
	`color` CHAR(255),
	PRIMARY KEY(`id`)
);

drop table cars;

drop table customers;

drop table invoices;

drop table salespersons;

ALTER TABLE `Invoices`
ADD FOREIGN KEY(`car`) REFERENCES `cars`(`vin`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Invoices`
ADD FOREIGN KEY(`customer`) REFERENCES `customers`(`cust_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Invoices`
ADD FOREIGN KEY(`staff_id`) REFERENCES `salespersons`(`staff_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE invoices
DROP FOREIGN KEY invoices_ibfk_1;

ALTER TABLE invoices
ADD CONSTRAINT invoices_ibfk_1
FOREIGN KEY (car) REFERENCES cars(id);