CREATE TABLE `cars`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Vin` INT NOT NULL,
    `model` MEDIUMTEXT NOT NULL,
    `year` DATE NOT NULL,
    `color` INT NOT NULL
);
CREATE TABLE `Customers`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` LONGTEXT NOT NULL,
    `phone_number` INT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `adress` VARCHAR(255) NOT NULL,
    `citybigint` LONGTEXT NOT NULL,
    `state` LONGTEXT NOT NULL,
    `country` MEDIUMTEXT NOT NULL,
    `postal` INT NOT NULL
);
CREATE TABLE `Salespersons`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` LONGTEXT NOT NULL,
    `store` LONGTEXT NOT NULL
);
CREATE TABLE `invoices`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_number` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL,
    `salesperson_id` INT NOT NULL,
    `custumer_id` INT NOT NULL,
    `car_id` INT NOT NULL
);
CREATE TABLE `store`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` LONGTEXT NOT NULL,
    `adress` VARCHAR(255) NOT NULL,
    `country` LONGTEXT NOT NULL,
    `staff_id` VARCHAR(255) NOT NULL,
    `date` DATE NOT NULL
);
ALTER TABLE
    `cars` ADD CONSTRAINT `cars_id_foreign` FOREIGN KEY(`id`) REFERENCES `store`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_id_foreign` FOREIGN KEY(`id`) REFERENCES `cars`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_salesperson_id_foreign` FOREIGN KEY(`salesperson_id`) REFERENCES `Salespersons`(`id`);
ALTER TABLE
    `store` ADD CONSTRAINT `store_id_foreign` FOREIGN KEY(`id`) REFERENCES `Customers`(`id`);
ALTER TABLE
    `cars` ADD CONSTRAINT `cars_id_foreign` FOREIGN KEY(`id`) REFERENCES `Customers`(`id`);
ALTER TABLE
    `store` ADD CONSTRAINT `store_id_foreign` FOREIGN KEY(`id`) REFERENCES `Salespersons`(`id`);
ALTER TABLE
    `invoices` ADD CONSTRAINT `invoices_custumer_id_foreign` FOREIGN KEY(`custumer_id`) REFERENCES `Customers`(`id`);