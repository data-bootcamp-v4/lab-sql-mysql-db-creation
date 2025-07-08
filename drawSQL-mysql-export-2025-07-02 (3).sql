CREATE TABLE `Salespersons`(
    `staff_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `s_name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL
);
CREATE TABLE `Invoices`(
    `invoice_number` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `staff_id` BIGINT NOT NULL,
    `VIN` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    `customer_id` BIGINT NOT NULL
);
CREATE TABLE `Address`(
    `address_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `country` VARCHAR(255) NOT NULL,
    `state` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `postal_code` BIGINT NOT NULL
);
CREATE TABLE `Customers`(
    `customer_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `c_name` VARCHAR(255) NOT NULL,
    `phone_n` BIGINT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address_id` BIGINT NOT NULL
);
CREATE TABLE `Cars`(
    `VIN` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year_of_prod` DATE NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    `staff_id` BIGINT NOT NULL,
    `customer_id` BIGINT NOT NULL,
    PRIMARY KEY(`VIN`)
);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_staff_id_foreign` FOREIGN KEY(`staff_id`) REFERENCES `Salespersons`(`staff_id`);
ALTER TABLE
    `Invoices` ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `Customers`(`customer_id`);
ALTER TABLE
    `Cars` ADD CONSTRAINT `cars_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `Customers`(`customer_id`);
ALTER TABLE
    `Customers` ADD CONSTRAINT `customers_address_id_foreign` FOREIGN KEY(`address_id`) REFERENCES `Address`(`address_id`);
ALTER TABLE
    `Cars` ADD CONSTRAINT `cars_staff_id_foreign` FOREIGN KEY(`staff_id`) REFERENCES `Salespersons`(`staff_id`);