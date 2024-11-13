CREATE TABLE `Salespersons`(
    `Staff_ID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(100) NOT NULL,
    `Store` VARCHAR(100) NOT NULL
);
CREATE TABLE `Invoices`(
    `Invoice_Number` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Date` DATE NOT NULL,
    `Car_VIN` VARCHAR(255) NOT NULL,
    `Customer_ID` INT NOT NULL,
    `Staff_ID` INT NOT NULL,
    `Total_Price` DECIMAL(8, 2) NOT NULL
);
CREATE TABLE `Cars`(
    `VIN` VARCHAR(17) NOT NULL,
    `Manufacturer` VARCHAR(100) NOT NULL,
    `Model` VARCHAR(100) NOT NULL,
    `Year` YEAR NOT NULL,
    `Color` VARCHAR(50) NOT NULL,
    `Price` DECIMAL(8, 2) NOT NULL,
    PRIMARY KEY(`VIN`)
);
CREATE TABLE `Customers`(
    `Customer_ID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(255) NOT NULL,
    `Phone_Number` VARCHAR(15) NOT NULL,
    `Email` VARCHAR(255) NULL,
    `Address` TEXT NOT NULL,
    `City` VARCHAR(100) NOT NULL,
    `State/Province` VARCHAR(100) NOT NULL,
    `Country` VARCHAR(100) NOT NULL,
    `Zip_Code` VARCHAR(20) NOT NULL
);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY(`Customer_ID`) REFERENCES `Customers`(`Customer_ID`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_car_vin_foreign` FOREIGN KEY(`Car_VIN`) REFERENCES `Cars`(`VIN`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_staff_id_foreign` FOREIGN KEY(`Staff_ID`) REFERENCES `Salespersons`(`Staff_ID`);