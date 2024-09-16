CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE `Cars` (
    `id` INT PRIMARY KEY,
    `vin` VARCHAR(50) NOT NULL,
    `manufacturer` VARCHAR(50),
    `model` VARCHAR(50),
    `year` INT,
    `color` VARCHAR(50)
);

CREATE TABLE `Customers` (
    `id` INT PRIMARY KEY,
    `cust_id` INT NOT NULL,
    `cust_name` VARCHAR(100),
    `cust_phone` VARCHAR(20),
    `cust_email` VARCHAR(100),
    `cust_address` VARCHAR(200),
    `cust_city` VARCHAR(100),
    `cust_state` VARCHAR(100),
    `cust_country` VARCHAR(100),
    `cust_zipcode` VARCHAR(20)
);

CREATE TABLE `Salespersons` (
    `id` INT PRIMARY KEY,
    `staff_id` VARCHAR(10) NOT NULL,
    `name` VARCHAR(100),
    `store` VARCHAR(100)
);

CREATE TABLE `Invoices` (
    `id` INT PRIMARY KEY,
    `invoice_number` BIGINT NOT NULL,
    `date` DATE,
    `car` INT,
    `customer` INT,
    `salesperson` INT,
    FOREIGN KEY (`car`) REFERENCES `Cars`(`id`),
    FOREIGN KEY (`customer`) REFERENCES `Customers`(`id`),
    FOREIGN KEY (`salesperson`) REFERENCES `Salespersons`(`id`)
);