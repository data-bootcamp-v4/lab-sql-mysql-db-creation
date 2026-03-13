CREATE DATABASE rentaldblab;
USE rentaldblab;

CREATE TABLE IF NOT EXISTS `Cars` (
    `car_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `vin` VARCHAR(255),
    `model` VARCHAR(255),
    `year` YEAR,
    `color` VARCHAR(255),
    `price` FLOAT,
    `status` VARCHAR(255),
    `manufacturer` VARCHAR(255),
    PRIMARY KEY(`car_id`)
);

CREATE TABLE IF NOT EXISTS `Salesperson` (
    `salesperson_id` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `staff_id` INTEGER,
    `name` VARCHAR(255),
    `phone` VARCHAR(20),
    `email` VARCHAR(255),
    `store` VARCHAR(255),
    PRIMARY KEY(`salesperson_id`)
);

CREATE TABLE IF NOT EXISTS `Customer` (
    `customerID` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `name` VARCHAR(255),
    `phone` VARCHAR(20),
    `email` VARCHAR(255),
    `address` VARCHAR(255),
    `zip` VARCHAR(10),
    `city` VARCHAR(255),
    `state` VARCHAR(255),
    `country` VARCHAR(255),
    PRIMARY KEY(`customerID`)
);

CREATE TABLE IF NOT EXISTS `Invoices` (
    `invoiceID` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `invoice_number` INTEGER,
    `payment_method` VARCHAR(255),
    `total_amount` FLOAT,
    `sale_price` FLOAT,
    `invoice_date` DATE,
    PRIMARY KEY(`invoiceID`)
);

CREATE TABLE IF NOT EXISTS `Orders` (
    `orderid` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `order_number` NUMERIC,
    `order_date` DATE,
    `customer_id` INTEGER NOT NULL,
    `car_id` INTEGER NOT NULL,
    `salesperson_id` INTEGER NOT NULL,
    `status` VARCHAR(255),
    `notes` VARCHAR(255),
    `invoiceID` INTEGER,
    PRIMARY KEY(`orderid`),
    FOREIGN KEY(`customer_id`)    REFERENCES `Customer`(`customerID`)   ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY(`car_id`)         REFERENCES `Cars`(`car_id`)           ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY(`salesperson_id`) REFERENCES `Salesperson`(`salesperson_id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY(`invoiceID`)      REFERENCES `Invoices`(`invoiceID`)    ON UPDATE CASCADE ON DELETE SET NULL
);