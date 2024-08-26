CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS car; 

CREATE TABLE `car`(
    `VIN` CHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    `manufacturer`VARCHAR(255) NOT NULL,
    PRIMARY KEY(`VIN`)
    );
DROP TABLE IF EXISTS customer;  

CREATE TABLE `customer`(
    `customer_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `postal_code` VARCHAR(255)
);

DROP TABLE IF EXISTS salesperson;

CREATE TABLE `salesperson`(
    `salesperson_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL
);


DROP TABLE IF EXISTS invoice;

CREATE TABLE `invoice`(
    `invoice_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_number` BIGINT NOT NULL,
    `VIN` CHAR(255) NOT NULL,
    `customer_id` INT NOT NULL,
    `salesperson_id` INT NOT NULL,
    `date` DATE NOT NULL,
    `quantity` INT NOT NULL,
    `store` VARCHAR(255) NOT NULL
);

    
    
