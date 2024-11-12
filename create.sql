CREATE TABLE `Salespersons`(
    `Number` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Salesperson_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` CHAR(255) NOT NULL,
    `Store` CHAR(255) NOT NULL
);
CREATE TABLE `Customers`(
    `Number` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Customer_ID` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` CHAR(255) NOT NULL,
    `Phone_Number` BIGINT NOT NULL,
    `Email` CHAR(255) NOT NULL,
    `Address` CHAR(255) NOT NULL,
    `City` CHAR(255) NOT NULL,
    `State_Province` CHAR(255) NOT NULL,
    `Country` CHAR(255) NOT NULL,
    `Zip_Postal_Code` BIGINT NOT NULL
);
CREATE TABLE `cars`(
    `Number` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `VIN` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Manufacturer` CHAR(255) NOT NULL,
    `Model` CHAR(255) NOT NULL,
    `Year` BIGINT NOT NULL,
    `Color` CHAR(255) NOT NULL
);
CREATE TABLE `Invoices`(
    `Number` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Invoice_ID` BIGINT NOT NULL,
    `Date` DATE NOT NULL,
    `VIN` BIGINT NOT NULL,
    `Customer_ID` BIGINT NOT NULL,
    `Salesperson_ID` BIGINT NOT NULL,
    `Salesperson_Name` CHAR(255) NOT NULL,
    PRIMARY KEY(`Invoice_ID`)
    
);

ALTER TABLE Customers MODIFY Customer_ID BIGINT UNSIGNED;
	ALTER TABLE Invoices MODIFY Customer_ID BIGINT UNSIGNED;
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY(`Customer_ID`) REFERENCES `Customers`(`Customer_ID`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_salesperson_id_foreign` FOREIGN KEY(`Salesperson_ID`) REFERENCES `Salespersons`(`Salesperson_ID`);
ALTER TABLE
    `Salespersons` ADD CONSTRAINT `salespersons_name_foreign` FOREIGN KEY(`Name`) REFERENCES `Invoices`(`Salesperson_Name`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_vin_foreign` FOREIGN KEY(`VIN`) REFERENCES `cars`(`VIN`);
    
