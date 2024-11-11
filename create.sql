CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE `cars`(
    `vin` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `colour` VARCHAR(255) NULL
);

DROP TABLE IF EXISTS salesperson:
CREATE TABLE `salesperson`(
    `staff_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE `customers`(
    `cust_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cust_name` TEXT NOT NULL,
    `cust_phone` BIGINT NOT NULL,
    `cust_email` TEXT NULL,
    `cust_address` TEXT NOT NULL,
    `cust_city` VARCHAR(255) NOT NULL,
    `cust_state` VARCHAR(255) NULL,
    `cust_country` VARCHAR(255) NOT NULL,
    `cust_zipcode` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE `invoices`(
    `invoice_number` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    `car` BIGINT UNSIGNED NOT NULL,  -- BIGINT UNSIGNED to match cars.vin
    `cust_id` BIGINT UNSIGNED NOT NULL,  -- BIGINT UNSIGNED to match customers.cust_id
    `salesperson` BIGINT UNSIGNED NOT NULL  -- BIGINT UNSIGNED to match salesperson.staff_id
);

ALTER TABLE `invoices` 
    ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY (`car`) REFERENCES `cars`(`vin`),
    ADD CONSTRAINT `invoices_cust_id_foreign` FOREIGN KEY (`cust_id`) REFERENCES `customers`(`cust_id`),
    ADD CONSTRAINT `invoices_salesperson_foreign` FOREIGN KEY (`salesperson`) REFERENCES `salesperson`(`staff_id`);
    
