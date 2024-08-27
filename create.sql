CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE `Cars`(
    `car_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `vehicle_identification_number` BIGINT NOT NULL,
    `model` TEXT NOT NULL,
    `year` CHAR(4) NOT NULL,
    `color` TEXT NOT NULL
);
ALTER TABLE
    `Cars` ADD UNIQUE `cars_vehicle_identification_number_unique`(`vehicle_identification_number`);
CREATE TABLE `Salespersons`(
    `staff_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `employee_id` BIGINT NOT NULL,
    `name` TEXT NOT NULL,
    `store` TEXT NOT NULL
);
ALTER TABLE
    `Salespersons` ADD UNIQUE `salespersons_employee_id_unique`(`employee_id`);
CREATE TABLE `Customers`(
    `customer_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` TEXT NOT NULL,
    `phone_number` INT NOT NULL,
    `email` TEXT NOT NULL,
    `address` TEXT NOT NULL,
    `city` TEXT NOT NULL,
    `customer_id_int` BIGINT NOT NULL,
    `state` TEXT NOT NULL,
    `country` TEXT NOT NULL,
    `postal code` CHAR(5) NOT NULL
);
ALTER TABLE
    `Customers` ADD UNIQUE `customers_customer_id_int_unique`(`customer_id_int`);
CREATE TABLE `Invoices`(
    `invoice_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `transaction_id` BIGINT NOT NULL,
    `salesperson` TEXT NOT NULL,
    `customer` TEXT NOT NULL,
    `date` DATE NOT NULL,
    `car` TEXT NOT NULL
);
ALTER TABLE
    `Invoices` ADD UNIQUE `invoices_transaction_id_unique`(`transaction_id`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`customer`) REFERENCES `Customers`(`customer_id`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `Cars`(`car_id`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_salesperson_foreign` FOREIGN KEY(`salesperson`) REFERENCES `Salespersons`(`staff_id`);