-- Drop the database if it exists
DROP DATABASE IF EXISTS lab_mysql;

-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Use the database
USE lab_mysql;

-- Create 'cars' table
CREATE TABLE `cars` (
    `vin` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` INT NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`vin`)
);

-- Create 'customers' table
CREATE TABLE `customers` (
    `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `phone_nr` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255),
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state_province` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip_postal_code` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`customer_id`)
);

-- Create 'salespersons' table
CREATE TABLE `salespersons` (
    `staff_id` INT UNSIGNED NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`staff_id`)
);

-- Create 'invoices' table
CREATE TABLE invoices (
    invoice_nr INT UNSIGNED NOT NULL AUTO_INCREMENT,
    date DATE NOT NULL,
    vin VARCHAR(255) NOT NULL,
    customer_id INT UNSIGNED NOT NULL,
    staff_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (invoice_nr),
    FOREIGN KEY (vin) REFERENCES cars (vin),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    FOREIGN KEY (staff_id) REFERENCES salespersons (staff_id)
);
