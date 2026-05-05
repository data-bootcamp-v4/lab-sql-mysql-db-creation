
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab_mysql` ;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersones;
DROP TABLE IF EXISTS salespersons;
-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`cars` (
  `car_id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(17) NOT NULL,
  `manufacturer` VARCHAR(100) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `year` DATE NOT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE INDEX `idcars_UNIQUE` (`car_id` ASC) VISIBLE,
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `phone-number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(250) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `state` VARCHAR(100) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `postal_code` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `idcustomers_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`salespersons` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `store` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `idsalespersons_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices` (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `car_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `salesperson_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE INDEX `idinvoices_UNIQUE` (`invoice_id` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons_idx` (`salesperson_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`car_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salespersons`
    FOREIGN KEY (`salesperson_id`)
    REFERENCES `lab_mysql`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `lab_mysql`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`car_id`)
    REFERENCES `lab_mysql`.`cars` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
show tables;
