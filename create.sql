CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS `invoices`;
DROP TABLE IF EXISTS `cars`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `salespersons`;

CREATE TABLE  `customers` (
	`customer_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`phone_number` VARCHAR(255),
	`email` VARCHAR(255) UNIQUE,
	`address` VARCHAR(255),
	`city` VARCHAR(255),
	`state/province` VARCHAR(255),
	`country` VARCHAR(255),
	`zip/postal_code` VARCHAR(20),
	PRIMARY KEY(`customer_id`)
);

CREATE TABLE  `salespersons` (
	`staff_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255),
	`store` VARCHAR(255),
	PRIMARY KEY(`staff_id`)
);


CREATE TABLE  `cars` (
	`car_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`vin` VARCHAR(17) NOT NULL,
	`manufacturer` VARCHAR(255),
	`model` VARCHAR(255),
	`year` YEAR,
	`color` VARCHAR(255),
	PRIMARY KEY(`car_id`)
);

CREATE TABLE `invoices` (
    `invoice_number` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE,
    `car_id` INTEGER UNSIGNED NOT NULL,
    `customer_id` INTEGER UNSIGNED NOT NULL,
    `staff_id` INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (`invoice_number`),
    FOREIGN KEY (`car_id`) REFERENCES `cars`(`car_id`),
    FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`),
    FOREIGN KEY (`staff_id`) REFERENCES `salespersons`(`staff_id`)
);



