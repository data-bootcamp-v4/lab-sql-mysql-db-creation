-- Create database and use it
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Disable foreign key checks to prevent errors when dropping tables
SET FOREIGN_KEY_CHECKS = 0;

-- Drop tables if they already exist
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS invoices;

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Create 'cars' table
CREATE TABLE `cars`(
	`car_id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `car_vin` CHAR(17) UNIQUE NOT NULL,
    `manufacturer` VARCHAR(50),
    `model` VARCHAR(50),
    `year` YEAR,
    `color` VARCHAR(20)
);

-- Create 'customers' table
CREATE TABLE `customers`(
    `customer_id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `phone_number` VARCHAR(20) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `street` VARCHAR(100),
    `city` VARCHAR(50) NOT NULL,
    `country` VARCHAR(50) NOT NULL,
    `zip_postal_code` VARCHAR(50)
);

-- Create 'salespersons' table
CREATE TABLE `salespersons`(
    `staff_id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `store` VARCHAR(50)
);

-- Create 'invoices' table
CREATE TABLE `invoices`(
	`invoice_id`INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `number` INT UNSIGNED UNIQUE NOT NULL,
    `date` DATE NOT NULL,
    `car_id` INT UNSIGNED NOT NULL,
    `customer_id` INT UNSIGNED NOT NULL,
    `staff_id` INT UNSIGNED NOT NULL,

FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`),
FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`),
FOREIGN KEY(`staff_id`) REFERENCES `salespersons`(`staff_id`)
);