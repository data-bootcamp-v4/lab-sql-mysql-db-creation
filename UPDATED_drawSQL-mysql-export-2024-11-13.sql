CREATE TABLE `customers`(
    `auto_increment` BIGINT NOT NULL,
    `customer_id` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `state/province` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `zip/postal code` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`auto_increment`)
);
ALTER TABLE
    `customers` ADD UNIQUE `customers_customer_id_unique`(`customer_id`);
ALTER TABLE
    `customers` ADD UNIQUE `customers_phone_number_unique`(`phone_number`);
ALTER TABLE
    `customers` ADD UNIQUE `customers_email_unique`(`email`);
CREATE TABLE `cars`(
    `auto_increment` BIGINT NOT NULL,
    `vin` VARCHAR(255) NOT NULL,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`auto_increment`)
);
ALTER TABLE
    `cars` ADD UNIQUE `cars_vin_unique`(`vin`);
CREATE TABLE `salesperson`(
    `auto_increment` BIGINT NOT NULL,
    `staff_id` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `store` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`auto_increment`)
);
ALTER TABLE
    `salesperson` ADD UNIQUE `salesperson_staff_id_unique`(`staff_id`);
CREATE TABLE `invoices`(
    `auto_increment` BIGINT NOT NULL,
    `invoice_nr` VARCHAR(255) NOT NULL,
    `vin` VARCHAR(255) NOT NULL,
    `customer_id` VARCHAR(255) NOT NULL,
    `staff_id` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    PRIMARY KEY(`auto_increment`)
);
ALTER TABLE
    `invoices` ADD UNIQUE `invoices_invoice_nr_unique`(`invoice_nr`);
ALTER TABLE
    `salesperson` ADD CONSTRAINT `salesperson_staff_id_foreign` FOREIGN KEY(`staff_id`) REFERENCES `invoices`(`staff_id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_vin_foreign` FOREIGN KEY(`vin`) REFERENCES `cars`(`vin`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`);