-- show processlist;

CREATE DATABASE IF NOT EXISTS lab_mysqlw4;  -- Create the database if it doesn't exist

USE lab_mysqlw4;  -- Switch to the database


-- Create Customers table

DROP TABLE IF EXISTS Customers; 
CREATE TABLE `Customers` (
    `root_id` BIGINT UNSIGNED NOT NULL,  -- Removed AUTO_INCREMENT
    `cust_id` BIGINT NOT NULL PRIMARY KEY,  
    `name` VARCHAR(255) NOT NULL,           
    `phone_no` BIGINT NOT NULL,
    `email` VARCHAR(255) NOT NULL,          
    `address` VARCHAR(255) NOT NULL,        
    `city` VARCHAR(255) NOT NULL,           
    `state` VARCHAR(255) NOT NULL,          
    `country` VARCHAR(255) NOT NULL,        
    `postal_code` BIGINT NOT NULL,
    UNIQUE KEY (`root_id`)                -- Add UNIQUE constraint on root_id
);

-- Create Salespersons table
drop table if exists Salespersons;
CREATE TABLE `Salespersons`(
    `root_id` BIGINT UNSIGNED NOT NULL, 
    `staff_ID` BIGINT NOT NULL PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,           
    `store` VARCHAR(255) NOT NULL,          
    UNIQUE KEY (`root_id`)                -- Add UNIQUE constraint on root_id
);

-- Create Cars table
drop table if exists Cars;
CREATE TABLE `Cars` (
    `root_id` BIGINT UNSIGNED NOT NULL,
    `VIN` VARCHAR(255) PRIMARY KEY,
    `Manufacturer` VARCHAR(255) NOT NULL,   
    `model` VARCHAR(255) NOT NULL,          
    `year` BIGINT NOT NULL,
    `color` VARCHAR(255) NOT NULL,          
    UNIQUE KEY (`root_id`)                -- Add UNIQUE constraint on root_id
);

-- Create Invoices table
drop table if exists Invoices;
CREATE TABLE `Invoices` (
    `root_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,  -- root_id as AUTO_INCREMENT
    `inv_no` BIGINT UNSIGNED NOT NULL,                  -- Removed AUTO_INCREMENT from inv_no
    `date` BIGINT NOT NULL,
    `car` BIGINT NOT NULL,
    `customer` BIGINT NOT NULL,
    `salesperson` BIGINT NOT NULL,
    PRIMARY KEY (`inv_no`),                             -- inv_no as the primary key
    UNIQUE KEY (`root_id`)                              -- Added UNIQUE constraint on root_id
);


-- Foreign key constraints using correct columns
ALTER TABLE `Salespersons`
    ADD CONSTRAINT `salespersons_root_id_foreign` FOREIGN KEY (`root_id`) REFERENCES `Invoices` (`root_id`);

ALTER TABLE `Customers`
    ADD CONSTRAINT `customers_root_id_foreign` FOREIGN KEY (`root_id`) REFERENCES `Invoices` (`root_id`);

ALTER TABLE `Cars`
    ADD CONSTRAINT `cars_root_id_foreign` FOREIGN KEY (`root_id`) REFERENCES `Invoices` (`root_id`);
