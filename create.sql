CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE `Customer`(
    `CustomerID` VARCHAR(255) NOT NULL,
    `Addressbigint` VARCHAR(255) NOT NULL,
    `Citybigint` VARCHAR(255) NOT NULL,
    `State` VARCHAR(255) NOT NULL,
    `Country` VARCHAR(255) NOT NULL,
    `Zip` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `Phone` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`CustomerID`)
);
CREATE TABLE `Car`(
    `VIN` VARCHAR(255) NOT NULL,
    `Manufacturer` VARCHAR(255) NOT NULL,
    `Color` VARCHAR(255) NOT NULL,
    `Model` VARCHAR(255) NOT NULL,
    `Year` YEAR NOT NULL,
    PRIMARY KEY(`VIN`)
);
CREATE TABLE `Salesperson`(
    `StaffID` VARCHAR(255) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(255) UNSIGNED NOT NULL AUTO_INCREMENT,
    `Store` VARCHAR(255) UNSIGNED NOT NULL AUTO_INCREMENT
);
CREATE TABLE `Invoice`(
    `Invoice_num` VARCHAR(255) NOT NULL,
    `Date` DATE NOT NULL,
    `Car` VARCHAR(255) NOT NULL,
    `Salesperson` VARCHAR(255) NOT NULL,
    `Customer` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`Invoice_num`)
);
ALTER TABLE
    `Invoice` ADD CONSTRAINT `invoice_salesperson_foreign` FOREIGN KEY(`Salesperson`) REFERENCES `Salesperson`(`StaffID`);
ALTER TABLE
    `Invoice` ADD CONSTRAINT `invoice_customer_foreign` FOREIGN KEY(`Customer`) REFERENCES `Customer`(`CustomerID`);
ALTER TABLE
    `Invoice` ADD CONSTRAINT `invoice_car_foreign` FOREIGN KEY(`Car`) REFERENCES `Car`(`VIN`);