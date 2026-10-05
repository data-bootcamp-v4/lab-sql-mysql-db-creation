CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE `cars` (
	car INT AUTO_INCREMENT PRIMARY KEY,
	`vin_id` VARCHAR(255) NOT NULL,
	`manufacturer` VARCHAR(255),
	`model` VARCHAR(255),
	`year` INT,
	`color` VARCHAR(255)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE `customers` (
	customer INT AUTO_INCREMENT PRIMARY KEY,
	`customer_id` VARCHAR(255) NOT NULL,
	`name` VARCHAR(255),
	`phone_number` VARCHAR(255),
	`email` VARCHAR(255),
	`address` VARCHAR(255),
	`city` VARCHAR(255),
	`state` VARCHAR(255),
	`country` VARCHAR(255),
	`zip_code` INT
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE `salespersons` (
	salesperson INT AUTO_INCREMENT PRIMARY KEY,
	`staff_id` VARCHAR(255) NOT NULL,
	`name` VARCHAR(255),
	`store` VARCHAR(255)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE `invoices` (
	id INT AUTO_INCREMENT PRIMARY KEY,
	`invoice_num` VARCHAR(255) NOT NULL,
	`invoice_date` DATE,
	`car` INT,
	`customer` INT,
	`salesperson` INT
);


ALTER TABLE `invoices`
ADD FOREIGN KEY(customer) REFERENCES customers (customer);
ALTER TABLE `invoices`
ADD FOREIGN KEY(`car`) REFERENCES cars (`car`);
ALTER TABLE `invoices`
ADD FOREIGN KEY(`salesperson`) REFERENCES `salespersons`(`salesperson`);



