-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop and create the `cars` table
DROP TABLE IF EXISTS cars;
CREATE TABLE `cars` (
    `vin` VARCHAR(17) NOT NULL,
    `manufacturer` VARCHAR(100) NOT NULL,
    `model` VARCHAR(100) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`vin`)
);

-- Drop and create the `customers` table
DROP TABLE IF EXISTS customers;
CREATE TABLE `customers` (
    `cust_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'AUTO_INCREMENT',
    `cust_name` VARCHAR(255) NOT NULL,
    `cust_phone` VARCHAR(15) NOT NULL,
    `cust_email` VARCHAR(255) NOT NULL,
    `cust_address` VARCHAR(255) NOT NULL,
    `cust_city` VARCHAR(100) NOT NULL,
    `cust_state` VARCHAR(100) NOT NULL,
    `cust_country` VARCHAR(100) NOT NULL,
    `cust_zipcode` VARCHAR(20) NOT NULL
);

-- Drop and create the `salespersons` table
DROP TABLE IF EXISTS salespersons;
CREATE TABLE `salespersons` (
    `staff_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'AUTO_INCREMENT',
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL
);

-- Drop and create the `invoices` table
DROP TABLE IF EXISTS invoices;
CREATE TABLE `invoices` (
    `invoice_number` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'invoice_number',
    `date` DATE NOT NULL,
    `vin` VARCHAR(17) NOT NULL,
    `cust_id` INT UNSIGNED NOT NULL,  -- Ensure this is UNSIGNED to match the `customers` table
    `staff_id` INT UNSIGNED NOT NULL  -- Ensure this is UNSIGNED to match the `salespersons` table
);

-- Add foreign key constraints for the `invoices` table
ALTER TABLE `invoices` 
    ADD CONSTRAINT `invoices_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `salespersons`(`staff_id`);

ALTER TABLE `invoices` 
    ADD CONSTRAINT `invoices_vin_foreign` FOREIGN KEY (`vin`) REFERENCES `cars`(`vin`);

ALTER TABLE `invoices` 
    ADD CONSTRAINT `invoices_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers`(`cust_id`);
    
