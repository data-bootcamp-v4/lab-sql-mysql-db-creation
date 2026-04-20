CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE IF NOT EXISTS `cars` (
	`vin` VARCHAR(20) NOT NULL PRIMARY KEY,
	`model` VARCHAR(50),
	`manufacturer` VARCHAR(50),
	`year` YEAR,
	`color` VARCHAR(20)
);

SELECT * FROM cars;

DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS `customers` (
	`cust_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`cust_name` VARCHAR(100),
	`cust_phone` VARCHAR(20),
	`cust_email` VARCHAR(100),
	`cust_address` VARCHAR(100),
	`cust_city` VARCHAR(50),
	`cust_state` VARCHAR(50),
	`cust_country` VARCHAR(50),
	`cust_zipcode` VARCHAR(20)
);

SELECT * FROM customers;

DROP TABLE IF EXISTS salespersons;

CREATE TABLE IF NOT EXISTS `salespersons` (
	`staff_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`staff_name` VARCHAR(50),
	`store_location` VARCHAR(50)
);

SELECT * FROM salespersons;

DROP TABLE IF EXISTS invoices;

CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_number` INT NOT NULL PRIMARY KEY,
	`invoice_date` DATE,
	`vin` VARCHAR(20),
	`cust_id` INT UNSIGNED,
	`staff_id` INT UNSIGNED
);

SELECT * FROM invoices;

ALTER TABLE invoices
ADD CONSTRAINT fk_staff_id
FOREIGN KEY(staff_id)
REFERENCES salespersons(staff_id)
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE invoices
ADD CONSTRAINT fk_cust_id
FOREIGN KEY(cust_id) 
REFERENCES customers(cust_id)
ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE invoices
ADD CONSTRAINT fk_vin
FOREIGN KEY(vin) 
REFERENCES cars(vin)
ON UPDATE NO ACTION ON DELETE NO ACTION;