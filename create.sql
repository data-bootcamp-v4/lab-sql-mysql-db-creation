CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS salespersons;

CREATE TABLE `salespersons`(
	`id` INT,
    `staff_id` CHAR(255) NOT NULL,
    `name` VARCHAR(255),
    `store` VARCHAR(255),
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS invoices;


CREATE TABLE `invoices`(
	`id` INT,
    `invoice_number` VARCHAR(255),
    `date` DATETIME,
    `car` INT,
    `customer` CHAR(255),
    `salesperson` CHAR(255),
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS cars;

CREATE TABLE `cars`(
	`id` INT,
    `identification_number` VARCHAR(255),
    `manufacturer` VARCHAR(255),
    `model` VARCHAR(255),
    `year` YEAR,
    `color` VARCHAR(255),
    PRIMARY KEY(`id`)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE `customers`(
	`id` INT,
    `customer_id` CHAR(255) NOT NULL,
    `name` VARCHAR(255),
    `phone_number` VARCHAR(255),
    `email` VARCHAR(255),
    `adress` VARCHAR(255),
    `city` VARCHAR(255),
    `state` VARCHAR(255),
    `country` VARCHAR(255),
    `zip_code` INT,
    PRIMARY KEY(`id`)
);