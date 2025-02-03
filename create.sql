CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `VIN` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cust_id` BIGINT NOT NULL,
    `cust_name` VARCHAR(255) NOT NULL,
    `cust_phone` VARCHAR(255) NOT NULL,
    `cust_email` VARCHAR(255),
    `cust_address` VARCHAR(255) NOT NULL,
    `cust_city` VARCHAR(255) NOT NULL,
    `cust_state` VARCHAR(255) NOT NULL,
    `cust_country` VARCHAR(255) NOT NULL,
    `cust_zipcode` BIGINT NOT NULL
);
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `staff_id` BIGINT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_number` BIGINT NOT NULL,
    `date` DATE NOT NULL,
    `car` BIGINT UNSIGNED NOT NULL,
    `customer` BIGINT UNSIGNED NOT NULL,
    `salesperson` BIGINT UNSIGNED NOT NULL 
);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `cars`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_customer_foreign` FOREIGN KEY(`customer`) REFERENCES `customers`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_salesperson_foreign` FOREIGN KEY(`salesperson`) REFERENCES `salespersons`(`id`);