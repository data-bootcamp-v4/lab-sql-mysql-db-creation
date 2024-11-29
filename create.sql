CREATE DATABASE IF NOT EXISTS `[lab_mysql]`;
USE `[lab_mysql]`;

DROP TABLE IF EXISTS cars;
create table `cars`(
`id` INT AUTO_INCREMENT,
`vin` VARCHAR(20) NOT NULL,
`manufacturer` VARCHAR(45) NULL,
`model` VARCHAR(45) NULL,
`year` INT NULL,
`color` VARCHAR(45) NULL,
PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS customers;
create table if not exists `customers`(
`id` INT AUTO_INCREMENT,
`customer_id` INT NOT NULL,
`name` VARCHAR(45),
`phone_number` VARCHAR(45),
`email` VARCHAR(45),
`address` VARCHAR(45),
`city` VARCHAR(45),
`state` VARCHAR(45),
`country` VARCHAR(45),
`postal_code` VARCHAR(45),
PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS salespersons;
create table if not exists `salespersons`(
`id` INT AUTO_INCREMENT,
`staff_id` CHAR(5) NOT NULL,
`name` VARCHAR(45),
`store` VARCHAR(45),
PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS invoices;
create table if not exists `invoices`(
`id` INT AUTO_INCREMENT,
`invoice_number` INT NOT NULL,
`date` DATETIME,
`car` INT,
`customer` INT,
`salesperson` INT,
PRIMARY KEY (`id`),
CONSTRAINT `fk_invoices_cars` FOREIGN KEY (`car`) REFERENCES `[lab_mysql]`.`cars` (`id`),
CONSTRAINT `fk_invoices_customers` FOREIGN KEY (`customer`) REFERENCES `[lab_mysql]`.`customers` (`id`),
CONSTRAINT `fk_invoices_salespersons` FOREIGN KEY (`salesperson`) REFERENCES `[lab_mysql]`.`salespersons` (`id`)
);