CREATE TABLE `Invoices`(
    `InvoiceNumber` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Date` BIGINT NOT NULL,
    `VIN` VARCHAR(20) NOT NULL,
    `CustomerID` BIGINT NOT NULL,
    `StaffID` BIGINT NOT NULL
);
CREATE TABLE `Salespersons`(
    `StaffID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` TEXT NOT NULL,
    `Store` TEXT NOT NULL
);
CREATE TABLE `Cars`(
    `VIN` VARCHAR(20) NOT NULL,
    `Manufacturer` VARCHAR(50) NOT NULL,
    `Model` TEXT NOT NULL,
    `Year` INT NOT NULL,
    `Color` TEXT NOT NULL,
    PRIMARY KEY(`VIN`)
);
CREATE TABLE `Customers`(
    `CustomerID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` TEXT NOT NULL,
    `PhoneNumber` VARCHAR(20) NOT NULL,
    `Email` TEXT NOT NULL,
    `Address` TEXT NOT NULL,
    `City` VARCHAR(100) NOT NULL,
    `State/Province` VARCHAR(100) NOT NULL,
    `Country` VARCHAR(100) NOT NULL,
    `Zip/PostalCode` VARCHAR(20) NOT NULL
);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_vin_foreign` FOREIGN KEY(`VIN`) REFERENCES `Cars`(`VIN`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_staffid_foreign` FOREIGN KEY(`StaffID`) REFERENCES `Salespersons`(`StaffID`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_customerid_foreign` FOREIGN KEY(`CustomerID`) REFERENCES `Customers`(`CustomerID`);