CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE IF NOT EXISTS `CARS` (
    `id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `vin` VARCHAR(17),
    `manufacturer` VARCHAR(50),
    `model` VARCHAR(50),
    `color` VARCHAR(20),
    `year` YEAR,
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `CUSTOMERS` (
    `id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `cust_id` INTEGER NOT NULL UNIQUE,
    `cust_name` VARCHAR(100),
    `cust_phone` VARCHAR(20),
    `cust_email` VARCHAR(100),
    `cust_address` VARCHAR(200),
    `cust_city` VARCHAR(50),
    `cust_state` VARCHAR(50),
    `cust_country` VARCHAR(50),
    `cust_zipcode` VARCHAR(10),
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `SALESPERSONS` (
    `id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `staff_id` VARCHAR(10),
    `name` VARCHAR(100),
    `store` VARCHAR(50),
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `INVOICES` (
    `id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `invoice_number` VARCHAR(20),
    `date` DATE,
    `car_id` INTEGER,
    `customer_id` INTEGER,
    `salesperson_id` INTEGER,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`car_id`) REFERENCES CARS(`id`),
    FOREIGN KEY(`customer_id`) REFERENCES CUSTOMERS(`id`),
    FOREIGN KEY(`salesperson_id`) REFERENCES SALESPERSONS(`id`)
);
