CREATE DATABASE IF NOT EXISTS lab_mysql;
use lab_mysql;

CREATE TABLE `cars`(
    `VIN` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NULL,
    `modal` BIGINT NULL,
    `year` BIGINT NULL,
    `colour` VARCHAR(255) NULL,
    PRIMARY KEY(`VIN`)
);
CREATE TABLE `customers`(
    `customerID` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `phoneNumber` BIGINT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NULL,
    `city` VARCHAR(255) NULL,
    `state/province` VARCHAR(255) NULL,
    `country` VARCHAR(255) NULL,
    `zipPostalCode` BIGINT NOT NULL,
    PRIMARY KEY(`customerID`)
);
CREATE TABLE `salespersons`(
    `staffID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `storeName` BIGINT NOT NULL
);
CREATE TABLE `invoices`(
    `invoiceID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` DATE NOT NULL,
    `car` VARCHAR(255) NOT NULL,
    `customerID` VARCHAR(255) NOT NULL,
    `salesPersonID` BIGINT NOT NULL
);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_customerid_foreign` FOREIGN KEY(`customerID`) REFERENCES `customers`(`customerID`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_car_foreign` FOREIGN KEY(`car`) REFERENCES `cars`(`VIN`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_salespersonid_foreign` FOREIGN KEY(`salesPersonID`) REFERENCES `salespersons`(`staffID`);
    
ALTER TABLE invoices MODIFY COLUMN salesPersonID INT UNSIGNED;

  ALTER TABLE customers  
CHANGE COLUMN `state/province` state_province VARCHAR(255);

ALTER TABLE salespersons MODIFY COLUMN storeName varchar(255);