CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
TRUNCATE TABLE cars;
 SELECT * FROM cars;
 
USE lab_mysql;
SHOW TABLES LIKE 'cars';
SHOW CREATE TABLE cars;

 
CREATE TABLE IF NOT EXISTS `cars` (
	`vin` VARCHAR(20) NOT NULL,
	`manufacturer` VARCHAR(255),
	`model` VARCHAR(255),
	`year` YEAR,
	`color` VARCHAR(255),
	PRIMARY KEY(`vin`)
);
INSERT INTO cars(`vin`, `manufacturer`, `model`, `year`, `color`)
VALUES 
("3K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
("ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
("RKXVNNIHLVVZOUB4M","Ford","Fusion",2018,"White"),
("HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver"),
("DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray"),
("DAM41UDN3CHU2WVF7","Volvo","V60 Cross Country",2019,"Gray");


 SELECT * FROM cars;

SHOW CREATE TABLE cars;

CREATE TABLE IF NOT EXISTS `customers` (
	`customer_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	`phone` VARCHAR(255),
	`email` VARCHAR(255),
	`address` VARCHAR(255),
	`city` VARCHAR(255),
	`state` VARCHAR(255),
	`country` VARCHAR(255),
	`zip` VARCHAR(255),
	PRIMARY KEY(`customer_id`)
);
INSERT INTO customers(`customer_id`,`name`,`phone`,`email`,`address`,`city`,`state`,`country`,`zip`)
VALUES (10001,"Pablo Picasso","+34 636 17 63 82","-","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045"),
(20001,"Abraham Lincoln","+1 305 907 7086","-","120 SW 8th St","Miami","Florida","United States","33130"),
(30001,"Napoléon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","Île-de-France","France","75008");

 SELECT * FROM customers;

SHOW CREATE TABLE customers;



CREATE TABLE IF NOT EXISTS `salespersons` (
	`staff_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255),
	`store` VARCHAR(255),
	PRIMARY KEY(`staff_id`)
);

INSERT INTO salespersons("staff_id", "name", "store")
VALUES
(00001,"Petey Cruiser","Madrid),
(00002,"Anna Sthesia","Barcelona),
(00003,"Paul Molive","Berlin),
(00004,"Gail Forcewind","Paris),
(00005,"Paige Turner","Mimia),
(00006,"Bob Frapples","Mexico City),
(00007,"Walter Melon","Amsterdam),
(00008,"Shonda Leer","São Paulo);

CREATE TABLE IF NOT EXISTS `invoices` (
	`invoice_num` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`date` DATE,
	`car` INTEGER,
	`customer` INTEGER,
	`salesperson` INTEGER,
	PRIMARY KEY(`invoice_num`)
);

INSERT INTO invoices("voice_num", "date", "car", "customer", "salesperson")
VALUES
(852399038","22-08-2018","1","1","3),
(731166526","31-12-2018","3","3","5),
(271135104","22-01-2019","2","2","7);

ALTER TABLE `salespersons`
ADD FOREIGN KEY(`staff_id`) REFERENCES `invoices`(`salesperson`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`customer`) REFERENCES `customers`(`customer_id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `invoices`
ADD FOREIGN KEY(`car`) REFERENCES `cars`(`vin`)
ON UPDATE NO ACTION ON DELETE NO ACTION;

("Pablo Picasso","ppicasso@gmail.com),
("Abraham Lincoln","lincoln@us.gov),
("Napoléon Bonaparte","hello@napoleon.me);