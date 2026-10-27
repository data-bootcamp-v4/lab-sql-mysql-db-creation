CREATE TABLE `car`(
    `car_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `VIN` VARCHAR(255) NOT NULL,
    `model_id` BIGINT NOT NULL,
    `year` YEAR NOT NULL,
    `color` VARCHAR(255) NULL,
    `list_price` FLOAT(53) NOT NULL
);
ALTER TABLE
    `car` ADD UNIQUE `car_vin_unique`(`VIN`);
CREATE TABLE `car_model`(
    `model_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `manufacturer` VARCHAR(255) NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `fuel_type` VARCHAR(255) NULL,
    `body_type` VARCHAR(255) NULL,
    `transmission` VARCHAR(255) NULL
);
CREATE TABLE `customer`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `primary_phone` VARCHAR(255) NOT NULL,
    `additional_phone` BIGINT NULL
);
ALTER TABLE
    `customer` ADD UNIQUE `customer_customer_id_unique`(`customer_id`);
CREATE TABLE `customer_address`(
    `address_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` VARCHAR(255) NOT NULL,
    `address_type` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `state` VARCHAR(255) NULL,
    `city` VARCHAR(255) NOT NULL,
    `street_address` VARCHAR(255) NOT NULL,
    `zip_code` VARCHAR(255) NOT NULL
);
CREATE TABLE `salesperson`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `staff_id` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `branch_id` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `salesperson` ADD UNIQUE `salesperson_staff_id_unique`(`staff_id`);
CREATE TABLE `branch`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `branch_id` VARCHAR(255) NOT NULL,
    `branch_name` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `state` VARCHAR(255) NULL,
    `city` VARCHAR(255) NOT NULL,
    `street_address` VARCHAR(255) NOT NULL,
    `zip_code` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `branch` ADD UNIQUE `branch_branch_id_unique`(`branch_id`);
CREATE TABLE `invoice`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_nr` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    `car_id` BIGINT NOT NULL,
    `customer_id` VARCHAR(255) NOT NULL,
    `staff_id` VARCHAR(255) NOT NULL,
    `sale_price` FLOAT(53) NOT NULL
);
ALTER TABLE
    `invoice` ADD UNIQUE `invoice_invoice_nr_unique`(`invoice_nr`);
ALTER TABLE
    `invoice` ADD UNIQUE `invoice_car_id_unique`(`car_id`);
ALTER TABLE
    `invoice` ADD UNIQUE `invoice_customer_id_unique`(`customer_id`);
ALTER TABLE
    `customer_address` ADD CONSTRAINT `customer_address_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `customer`(`customer_id`);
ALTER TABLE
    `customer` ADD CONSTRAINT `customer_customer_id_foreign` FOREIGN KEY(`customer_id`) REFERENCES `invoice`(`customer_id`);
ALTER TABLE
    `car` ADD CONSTRAINT `car_model_id_foreign` FOREIGN KEY(`model_id`) REFERENCES `car_model`(`model_id`);
ALTER TABLE
    `car` ADD CONSTRAINT `car_car_id_foreign` FOREIGN KEY(`car_id`) REFERENCES `invoice`(`car_id`);
ALTER TABLE
    `salesperson` ADD CONSTRAINT `salesperson_staff_id_foreign` FOREIGN KEY(`staff_id`) REFERENCES `invoice`(`staff_id`);
ALTER TABLE
    `salesperson` ADD CONSTRAINT `salesperson_branch_id_foreign` FOREIGN KEY(`branch_id`) REFERENCES `branch`(`branch_id`);