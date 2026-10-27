CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`phone_number` VARCHAR(255) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`address` VARCHAR(255) NOT NULL,
	`city` VARCHAR(255) NOT NULL,
	`state_province` VARCHAR(255) NOT NULL,
	`country` VARCHAR(255) NOT NULL,
	`zip_postal_code` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`customer_id`)
);


CREATE TABLE IF NOT EXISTS `cars` (
	`vin` VARCHAR(255) NOT NULL UNIQUE,
	`manufacturer` VARCHAR(255) NOT NULL,
	`model` VARCHAR(255) NOT NULL,
	`year` YEAR NOT NULL,
	`color` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`vin`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`invoice_number` VARCHAR(255) NOT NULL UNIQUE,
	`customer_id` BIGINT UNSIGNED NOT NULL,
	`vin` VARCHAR(255) NOT NULL,
	`date` DATETIME NOT NULL,
	`salesperson_id` BIGINT NOT NULL UNIQUE,
	PRIMARY KEY(`invoice_id`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`salesperson_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(255) NOT NULL,
	`store_id` BIGINT NOT NULL UNIQUE,
	PRIMARY KEY(`salesperson_id`)
);


CREATE TABLE IF NOT EXISTS `stores` (
	`store_id` BIGINT UNSIGNED NOT NULL UNIQUE,
	`store_name` VARCHAR(255) NOT NULL,
	`address` VARCHAR(255) NOT NULL,
	`city` VARCHAR(255) NOT NULL,
	`state` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`store_id`)
);


ALTER TABLE `customers`
ADD FOREIGN KEY(`customer_id`) REFERENCES `invoices`(`customer_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`salesperson_id`) REFERENCES `salespersons`(`salesperson_id`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `stores`
ADD FOREIGN KEY(`store_id`) REFERENCES `salespersons`(`store_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `cars`
ADD FOREIGN KEY(`vin`) REFERENCES `invoices`(`vin`)
ON UPDATE CASCADE ON DELETE CASCADE;

INSERT INTO cars (vin, manufacturer, model, year, color) VALUES 
       ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
       ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
       ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
       ('DAM41UDN3CHU2VWF6', 'Volvo', 'V60', 2019, 'Gray'),
       ('DAM41UDN3CHU2VWF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (name, phone_number, email, address, city, state_province, country, zip_postal_code) VALUES 
       ('Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
       ('Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
       ('Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (name, store_id) VALUES 
       ('Petey Cruiser', 1),
       ('Anna Sthesia', 2),
       ('Paul Molive', 3),
       ('Gail Forcewind', 4),
       ('Paige Turner', 1),
       ('Bob Frapples', 2),
       ('Walter Melon', 3),
       ('Shonda Leer', 4);
       
INSERT INTO invoices (invoice_number, customer_id, car_id, date, salesperson_id) VALUES 
       ('852399038', 1, 1, '2018-08-22 00:00:00', 3),
       ('731166526', 3, 3, '2018-12-31 00:00:00', 5),
       ('271135104', 2, 2, '2019-01-22 00:00:00', 7);
