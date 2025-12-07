CREATE DATABASE IF NOT exists lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS `invoices` (
	`refIndex` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
    `invoiceId` VARCHAR(255) NOT NULL UNIQUE,
	`date` DATE,
	`VIN` VARCHAR(255) NOT NULL UNIQUE,
	`customerId` VARCHAR(255) NOT NULL,
	`staffId` VARCHAR(255),
	PRIMARY KEY(`invoiceId`)
);

DROP TABLE IF EXISTS cars;
CREATE TABLE IF NOT EXISTS cars (
	`refIndex` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`VIN` VARCHAR(255) NOT NULL UNIQUE,
	`manufacturer` VARCHAR(255),
	`model` VARCHAR(255),
	`year` CHAR(4),
	`color` VARCHAR(255),
	PRIMARY KEY(`VIN`)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS `customers` (
	`refIndex` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`customerId` VARCHAR(255) NOT NULL UNIQUE,
	`name` VARCHAR(255),
	`phone` VARCHAR(255),
	`email` VARCHAR(255),
	`adress` VARCHAR(255),
	`city` VARCHAR(255),
	`province` VARCHAR(255),
	`country` VARCHAR(255),
	`postal` VARCHAR(255),
	PRIMARY KEY(`customerId`)
);

DROP TABLE IF EXISTS SalesPersons;
CREATE TABLE IF NOT EXISTS `SalesPersons` (
	`refIndex` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`staffId` VARCHAR(255) UNIQUE,
	`name` VARCHAR(255),
	`store` VARCHAR(255),
	PRIMARY KEY(`staffId`)
);

-- add foreign key for the car in invoices
ALTER TABLE invoices
ADD FOREIGN KEY(VIN)
REFERENCES cars(VIN)
ON UPDATE NO ACTION ON DELETE NO ACTION;

-- add foreign key for the customers in invoices
ALTER TABLE invoices
ADD FOREIGN KEY (customerId)
REFERENCES customers(customerId)
ON UPDATE NO ACTION ON DELETE NO ACTION;

-- add foreign key for the SalesPerson in invoices
ALTER TABLE invoices
ADD FOREIGN KEY (staffId)
REFERENCES SalesPersons(staffId)
ON UPDATE NO ACTION ON DELETE NO ACTION;

-- CREATE INDEX `invoices_index_0`
-- ON `invoices`(refIndex);
-- CREATE INDEX `SalesPersons_index_0`
-- ON `SalesPersons`(refIndex);
-- ALTER TABLE `customers`
-- ADD FOREIGN KEY(`customerId`) REFERENCES `invoices`(`customerId`)
-- ON UPDATE NO ACTION ON DELETE NO ACTION;
-- ALTER TABLE `SalesPersons`
-- ADD FOREIGN KEY(`staffId`) REFERENCES `invoices`(`staffId`)
-- ON UPDATE NO ACTION ON DELETE NO ACTION;
-- ALTER TABLE `cars`
-- ADD FOREIGN KEY(`VIN`) REFERENCES `invoices`(`VIN`)
-- ON UPDATE NO ACTION ON DELETE NO ACTION;

SHOW TABLES;

-- adding content to columns
INSERT INTO customers 
(
	`customerId`,
	`name`,
	`phone`,
	`email`,
	`adress`,
	`city`,
	`province`,
	`country`,
	`postal`
)
VALUES
(
	'CUST001',
    'John Doe',
    '123456789',
    'john@example.com',
    '123 Main St',
    'Lisbon',
    'Lisbon',
    'Portugal',
    '1000-001'
);
INSERT INTO cars (
	`VIN`,
	`manufacturer`,
	`model`,
	`year`,
	`color`)
VALUES
	(
    '1HGCM82633A123456',
    'Honda',
    'Accord',
    2020,
    'Blue'
),
(
    '3FA6P0H73HR123789',
    'Ford',
    'Fusion',
    2018,
    'Black'
);
INSERT INTO SalesPersons 
(
	`staffId`,
	`name`,
	`store`
)
VALUES
(
    'SP01',
    'Alice Johnson',
    'Lisbon Downtown'
),
(
    'SP02',
    'Carlos Mendes',
    'Porto Riverside'
);

SHOW TABLES;
