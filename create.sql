-- CREATE DATABASE IF NOT EXISTS lab_mysql;
-- USE lab_mysql;
-- CREATE TABLE 

CREATE TABLE `Cars`(
`VIN` VARCHAR(20),
`manufacturer` VARCHAR(30) NOT NULL,
`model` VARCHAR(30) NOT NULL,
`Year` int,
`color` varchar(20) NOT NULL,
PRIMARY KEY (`VIN`)
);

CREATE TABLE `Customers`(
`customer_id` VARCHAR(20) NOT NULL,
`name` VARCHAR(50) NOT NULL,
`phone` VARCHAR(20) NOT NULL,
`address` VARCHAR(50) NOT NULL,
`city` VARCHAR(50) NOT NULL,
`state_province` VARCHAR(60) NOT NULL,
`country` VARCHAR(50) NOT NULL,
`zip_code` VARCHAR(20),
PRIMARY KEY (`customer_ID`)
);

CREATE TABLE `Salespersons`(
`staff_id` int NOT NULL,
`name` VARCHAR(50) NOT NULL,
`store` VARCHAR(50) NOT NULL,
PRIMARY KEY (`staff_id`)
);

CREATE TABLE `Invoices`(
`invoice_nr` int,
`date` date,
`VIN` VARCHAR(20),
`customer_id` VARCHAR(20) NOT NULL,
`staff_id` int NOT NULL,
PRIMARY KEY (`invoice_nr`),
CONSTRAINT `fk_invoice_car` FOREIGN KEY (`VIN`) REFERENCES `CARS` (`VIN`) ON DELETE CASCADE,
CONSTRAINT `fk_invoice_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `Customers`(`customer_id`) ON DELETE CASCADE,
CONSTRAINT `fk_invoice_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `Salespersons` (`staff_id`) ON DELETE CASCADE
);

ALTER TABLE `Invoices` DROP FOREIGN KEY `fk_invoice_customer_id`;
ALTER TABLE `Invoices` DROP FOREIGN KEY `fk_invoice_staff_id`;

ALTER TABLE `Customers`
CHANGE COLUMN `customer_id` `customer_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE `Invoices`
MODIFY COLUMN `customer_id` INT NOT NULL;

ALTER TABLE `Invoices`
ADD CONSTRAINT `fk_invoice_customer_id`
FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE;

ALTER TABLE `Salespersons`
MODIFY COLUMN `staff_id` INT AUTO_INCREMENT; 

ALTER TABLE `Invoices`
MODIFY COLUMN `staff_id` INT NOT NULL;

ALTER TABLE `Invoices`
MODIFY COLUMN `invoice_nr` INT AUTO_INCREMENT;


ALTER TABLE `Invoices`
ADD CONSTRAINT `fk_invoice_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `Salespersons` (`staff_id`) ON DELETE CASCADE;

ALTER TABLE `Invoices`
MODIFY COLUMN `invoice_nr` INT AUTO_INCREMENT;

-- CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;




