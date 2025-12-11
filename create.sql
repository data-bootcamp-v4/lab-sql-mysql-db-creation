CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	`car_id` INT NOT NULL AUTO_INCREMENT,
    `VIN number` VARCHAR(45) NOT NULL,
    `manufacturer` VARCHAR(45) NOT NULL,
    `model` VARCHAR(45) NOT NULL,
    `year` INT NOT NULL,
    `available color` VARCHAR(45),
    PRIMARY KEY(`car_id`)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	`customer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `phone number` VARCHAR(45) UNIQUE,
    `email` VARCHAR(45) UNIQUE,
    `address` VARCHAR(45),
    `city` VARCHAR(45),
    `state/province` VARCHAR(45),
    `country` VARCHAR(45),
    `zip/postal code` VARCHAR(45),
    `customer store id` VARCHAR(45),
    PRIMARY KEY(`customer_id`)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	`salesperson_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `store` VARCHAR(45) UNIQUE,
    `staff id` VARCHAR(45) UNIQUE,
    PRIMARY KEY(`salesperson_id`)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	`invoice_id` INT NOT NULL AUTO_INCREMENT,
    `invoice number` INT NOT NULL,
    `date` DATE NOT NULL,
    `car_id` INT NOT NULL,
    `customer_id` INT NOT NULL,
    `salesperson_id` INT NOT NULL,
    PRIMARY KEY(`invoice_id`),
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

DESCRIBE invoices;

