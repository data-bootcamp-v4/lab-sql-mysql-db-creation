CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE IF NOT EXISTS `cars` (
	`id_cars` BIGINT UNSIGNED NOT NULL,
	`VIN` VARCHAR(255) NOT NULL,
	`manufacturer` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`year` BIGINT NOT NULL,
	`color` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id_cars`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`id_customers` BIGINT UNSIGNED NOT NULL,
	`cust_id` BIGINT NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`phone` VARCHAR(255),
	`email` VARCHAR(255),
	`adress` VARCHAR(255),
	`city` VARCHAR(255),
	`state` VARCHAR(255),
	`country` VARCHAR(255),
	`zipcode` BIGINT,
	PRIMARY KEY(`id_customers`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`id_salespersons` BIGINT UNSIGNED NOT NULL,
	`staff_id` VARCHAR(255) NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`store` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id_salespersons`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`id_invoices` BIGINT UNSIGNED NOT NULL,
	`invoice_number` BIGINT NOT NULL,
	`date` DATETIME NOT NULL,
	`id_cars` BIGINT UNSIGNED NOT NULL,
	`id_customers` BIGINT UNSIGNED NOT NULL,
	`id_salespersons` BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY(`id_invoices`)
);


ALTER TABLE invoices
ADD FOREIGN KEY (id_salespersons)
REFERENCES salespersons(id_salespersons);

ALTER TABLE invoices
ADD FOREIGN KEY (id_cars)
REFERENCES cars(id_cars);

ALTER TABLE invoices
ADD FOREIGN KEY (id_customers)
REFERENCES customers(id_customers);
