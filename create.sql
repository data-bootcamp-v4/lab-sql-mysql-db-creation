CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
`car_id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(17) NULL DEFAULT NULL,
  `manufacturer` VARCHAR(50) NULL DEFAULT NULL,
  `model` VARCHAR(50) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `color` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
`id` INT NOT NULL,
  `cust_id` INT NULL DEFAULT NULL,
  `cust_name` VARCHAR(100) NULL DEFAULT NULL,
  `cust_phone` VARCHAR(20) NULL DEFAULT NULL,
  `cust_email` VARCHAR(100) NULL DEFAULT NULL,
  `cust_address` VARCHAR(255) NULL DEFAULT NULL,
  `cust_city` VARCHAR(50) NULL DEFAULT NULL,
  `cust_state` VARCHAR(50) NULL DEFAULT NULL,
  `cust_country` VARCHAR(50) NULL DEFAULT NULL,
  `cust_zipcode` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE

);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salepersons (
`id` INT NOT NULL,
  `staff_id` INT NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE

);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
`id` INT NOT NULL,
  `invoice_number` INT NULL DEFAULT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  `car_id` INT NULL DEFAULT NULL,
  `cust_id` INT NULL DEFAULT NULL,
  `sp_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `invoices_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `car_id_UNIQUE` (`car_id` ASC) VISIBLE,
 
  CONSTRAINT `car_id`
    FOREIGN KEY (`car_id`)
    REFERENCES cars (`car_id`),
  CONSTRAINT `cust_id`
    FOREIGN KEY (`cust_id`)
    REFERENCES customers (`id`),
  CONSTRAINT `staff_id`
    FOREIGN KEY (`sp_id`)
    REFERENCES salespersons (`id`) )
