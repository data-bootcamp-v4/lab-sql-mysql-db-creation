CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salesperson;

CREATE TABLE `cars` (
  `VIN` VARCHAR(17),
  `manufacturer` VARCHAR(50),
  `model` VARCHAR(50),
  `year` INT,
  `color` VARCHAR(30),
  PRIMARY KEY (`VIN`)
);

CREATE TABLE `customers` (
  `customer_id` INT,
  `name` VARCHAR(100),
  `email` VARCHAR(100),
  `zip_code` VARCHAR(20),
  `city_province` VARCHAR(50),
  `country` VARCHAR(50),
  `street_name` VARCHAR(100),
  `phone_number` VARCHAR(20),
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE `salesperson` (
  `staff_id` INT,
  `name` VARCHAR(100),
  `store` VARCHAR(100),
  PRIMARY KEY (`staff_id`)
);

CREATE TABLE `invoices` (
 `invoice_number` INT,
  `staff_id` INT,
  `date` DATE,
  `VIN` VARCHAR(17),
  `customer_id` INT,
  PRIMARY KEY (`invoice_number`),
  FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`),
  FOREIGN KEY (`staff_id`) REFERENCES `salesperson`(`staff_id`),
  FOREIGN KEY (`VIN`) REFERENCES `cars`(`VIN`)
);
