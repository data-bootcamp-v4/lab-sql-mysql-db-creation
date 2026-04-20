CREATE TABLE IF NOT EXISTS `cars` (
	`vin` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`manufacturer` VARCHAR(255),
	`model` INTEGER,
	`year` YEAR,
	`color` VARCHAR(255),
	PRIMARY KEY(`vin`)
);


CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	`phone` INTEGER,
	`email` VARCHAR(255),
	`address` VARCHAR(255),
	`city` VARCHAR(255),
	`state` VARCHAR(255),
	`country` VARCHAR(255),
	`zip` INTEGER,
	PRIMARY KEY(`customer_id`)
);


CREATE TABLE IF NOT EXISTS `salespersons` (
	`staff_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	`store` VARCHAR(255),
	PRIMARY KEY(`staff_id`)
);


CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_num` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`date` DATE,
	`car` INTEGER,
	`customer` INTEGER,
	`salesperson` INTEGER,
	PRIMARY KEY(`invoice_num`)
);


ALTER TABLE `salespersons`
ADD FOREIGN KEY(`staff_id`) REFERENCES `invoices`(`salesperson`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`customer`) REFERENCES `customers`(`customer_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`car`) REFERENCES `cars`(`vin`)
ON UPDATE NO ACTION ON DELETE NO ACTION;