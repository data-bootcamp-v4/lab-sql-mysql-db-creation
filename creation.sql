CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS Salesperson(
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `staff_id` BIGINT NOT NULL,
    `name` VARCHAR(25) NOT NULL,
    `store` VARCHAR(25) NOT NULL
);

CREATE TABLE Cars (
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `vin` VARCHAR(20) NOT NULL,
    `manufacturer` VARCHAR(20) NOT NULL,
    `model` VARCHAR(20) NOT NULL,
    `year` INT NOT NULL,
    `color` VARCHAR(20) NOT NULL
);

CREATE TABLE Invoices(
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY,
    `invoice_number` BIGINT UNSIGNED NOT NULL,
    `date` date NOT NULL,
    `car` BIGINT NOT NULL,
    `customer` BIGINT NOT NULL,
    `salesperson` BIGINT NOT NULL
);

CREATE TABLE Customer(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cust_id` BIGINT NOT NULL,
    `cust_name` VARCHAR(255) NOT NULL,
    `cust_phone` VARCHAR(20) NOT NULL,
    `cust_email` VARCHAR(40),
    `cust_address` VARCHAR(100) NOT NULL,
    `cust_city` VARCHAR(255) NOT NULL,
    `cust_state` VARCHAR(255) NOT NULL,
    `cust_country` VARCHAR(255) NOT NULL,
    `cust_zipcode` BIGINT NOT NULL
);


ALTER TABLE Invoices 
  ADD CONSTRAINT `car_to_carid` FOREIGN KEY(`car`) REFERENCES `Cars`(`id`);

ALTER TABLE Invoices
  ADD CONSTRAINT `customer_to_customerid` FOREIGN KEY(`customer`) REFERENCES `Customer`(`id`);

ALTER TABLE Invoices
  ADD CONSTRAINT `salesperson_to_salespersonid` FOREIGN KEY(`salesperson`) REFERENCES `Salesperson`(`id`);

    
