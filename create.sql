CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS salespersons;

DROP TABLE IF EXISTS invoices;

CREATE TABLE cars (
  `vehicle_id` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NULL,
  `color` VARCHAR(45) NULL,
  `vin` VARCHAR(45) NOT NULL,
  UNIQUE (vin),
  PRIMARY KEY (`vehicle_id`)
);

CREATE TABLE customers (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal_code` VARCHAR(45) NULL,
  `internal_customer_id` VARCHAR(45) NULL,
  UNIQUE (internal_customer_id),
  PRIMARY KEY (`customer_id`)
);

CREATE TABLE salespersons (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `internal_staff_id` VARCHAR(45) NOT NULL,
  UNIQUE (internal_staff_id),
  PRIMARY KEY (`staff_id`)
);

CREATE TABLE invoices (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `cars_vehicle_id` VARCHAR(45) NOT NULL,
  `customers_customer_id` VARCHAR(45) NOT NULL,
  `salespersons_staff_id` VARCHAR(45) NOT NULL,
  `internal_invoice_id` INT NOT NULL,
  UNIQUE (internal_invoice_id),
  PRIMARY KEY (`invoice_id`),
  FOREIGN KEY (`cars_vehicle_id`) REFERENCES cars(`vin`),
  FOREIGN KEY (`customers_customer_id`) REFERENCES customers(`internal_customer_id`),
  FOREIGN KEY (`salespersons_staff_id`) REFERENCES salespersons(`internal_staff_id`)
);