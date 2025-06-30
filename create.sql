CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS Customers;
CREATE TABLE `Customers` (
  `customer_id` INT,
  `customer_code` VARCHAR(10),
  `name` VARCHAR(100),
  `phone_number` VARCHAR(20),
  `email` VARCHAR(100),
  `address` VARCHAR(255),
  `city` VARCHAR(100),
  `state_province` VARCHAR(100),
  `country` VARCHAR(100),
  `postal_code` VARCHAR(20),
  PRIMARY KEY (`customer_id`)
);
DROP TABLE IF EXISTS Cars;
CREATE TABLE `Cars` (
  `car_id` INT,
  `vin` VARCHAR(17),
  `manufacturer` VARCHAR(50),
  `model` VARCHAR(50),
  `year` YEAR,
  `color` VARCHAR(30),
  PRIMARY KEY (`car_id`)
);
DROP TABLE IF EXISTS Invoices;
CREATE TABLE `Invoices` (
  `invoice_id` INT,
  `invoice_number` VARCHAR(20),
  `invoice_ date` DATE,
  `car_id` INT,
  `customer_id` INT,
  `salesperson_id` INT,
  PRIMARY KEY (`invoice_id`),
  FOREIGN KEY (`customer_id`) REFERENCES `Customers`(`customer_id`)
);
DROP TABLE IF EXISTS Salesperson;
CREATE TABLE `Salesperson` (
  `salesperson_id` int,
  `staff_code` VARCHAR(10),
  `name` VARCHAR(100),
  `store` VARCHAR(100),
  PRIMARY KEY (`salesperson_id`),
  FOREIGN KEY (`salesperson_id`) REFERENCES `Invoices`(`salesperson_id`)
);


