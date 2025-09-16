CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- DROP TABLE IF EXISTS cars;
CREATE TABLE `cars`(
    `id` int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `vin` VARCHAR(255) NOT NULL,
    `manufacturer` CHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` INT NOT NULL,
    `color` CHAR(255) NOT NULL
);
-- DROP TABLE IF EXISTS customers;
CREATE TABLE `customers`(
    `cust_id` int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cust_name` CHAR(255) NOT NULL,
    `cust_phone` VARCHAR(255) NOT NULL,
    `cust_email` CHAR(255) NULL,
    `cust_address` VARCHAR(255) NOT NULL,
    `cust_city` CHAR(255) NOT NULL,
    `cust_state` CHAR(255) NOT NULL,
    `cust_country` CHAR(255) NOT NULL,
    `cust_zipcode` INT NOT NULL
);
-- DROP TABLE IF EXISTS salespersons;
CREATE TABLE `salespersons`(
    `staff_ID` int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` CHAR(255) NOT NULL,
    `store` CHAR(255) NOT NULL
);
-- DROP TABLE IF EXISTS invoices;
CREATE TABLE `invoices`(
    `invoice_number` int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` date NOT NULL,
    `car` int UNSIGNED NOT NULL,
    `customer` int UNSIGNED NOT NULL,
    `salesperson` int UNSIGNED NOT NULL,
    FOREIGN KEY(`car`) REFERENCES `cars`(`id`),
    FOREIGN KEY(`customer`) REFERENCES `customers`(`cust_id`),
    FOREIGN KEY(`salesperson`) REFERENCES `salespersons`(`staff_ID`)
);
/*
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `cars`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_customerint_foreign` FOREIGN KEY(`customerint`) REFERENCES `customers`(`cust_id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_salespersonint_foreign` FOREIGN KEY(`salespersonint`) REFERENCES `salespersons`(`staff_ID`);
*/