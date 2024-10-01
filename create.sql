CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS `cars`;

CREATE TABLE IF NOT EXISTS `cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(17) NOT NULL,
  `manufacturer` VARCHAR(100) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  `year` YEAR NOT NULL,
  `color` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`));
  


DROP TABLE IF EXISTS `customers`;

CREATE TABLE IF NOT EXISTS `customers` (
  `cust_id` INT NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `cust_phone` VARCHAR(20) NOT NULL,
  `cust_email` VARCHAR(150) NULL,
  `cust_address` VARCHAR(255) NOT NULL,
  `cust_city` VARCHAR(100) NOT NULL,
  `cust_state` VARCHAR(100) NOT NULL,
  `cust_country` VARCHAR(100) NOT NULL,
  `cust_zipcode` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`));



DROP TABLE IF EXISTS `salespersons`;

CREATE TABLE IF NOT EXISTS `salespersons` (
  `staff_id` INT NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `store` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`));
  
 
  DROP TABLE IF EXISTS `invoices`;
  
  CREATE TABLE IF NOT EXISTS `invoices` (
  `invoice_number` INT NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `car` INT NOT NULL,
  `customer` INT NOT NULL,
  `salesperson` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `car_idx` (`car` ASC) VISIBLE,
  INDEX `cust_id_idx` (`customer` ASC) VISIBLE,
  INDEX `staff_id_idx` (`salesperson` ASC) VISIBLE,
  CONSTRAINT `fk_car_id`
    FOREIGN KEY (`car`)
    REFERENCES `cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cust_id`
    FOREIGN KEY (`customer`)
    REFERENCES `customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff_id`
    FOREIGN KEY (`salesperson`)
    REFERENCES `salespersons` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
SHOW TABLES;