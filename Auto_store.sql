-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Auto_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Auto_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Auto_db` ;
USE `Auto_db` ;

-- -----------------------------------------------------
-- Table `Auto_db`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auto_db`.`cars` (
  `vin` INT NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`vin`),
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Auto_db`.`customer_table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auto_db`.`customer_table` (
  `cust_auto_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` VARCHAR(12) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` INT NULL,
  `address` VARCHAR(75) NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal_code` INT(5) NOT NULL,
  PRIMARY KEY (`cust_auto_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Auto_db`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auto_db`.`salesperson` (
  `staff_auto_id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` VARCHAR(15) NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`staff_auto_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Auto_db`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auto_db`.`invoice` (
  `invoice_no` INT NOT NULL,
  `date` DATE NULL,
  `car` VARCHAR(45) NULL,
  `customer_id` VARCHAR(15) NULL,
  `sales_id` VARCHAR(15) NULL,
  `vin` INT NOT NULL,
  `staff_auto_id` INT NOT NULL,
  `cust_auto_id` INT NOT NULL,
  PRIMARY KEY (`invoice_no`, `vin`, `staff_auto_id`, `cust_auto_id`),
  UNIQUE INDEX `invoice_no_UNIQUE` (`invoice_no` ASC) VISIBLE,
  INDEX `fk_invoice_cars_idx` (`vin` ASC) VISIBLE,
  INDEX `fk_invoice_salesperson1_idx` (`staff_auto_id` ASC) VISIBLE,
  INDEX `fk_invoice_customer_table1_idx` (`cust_auto_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoice_cars`
    FOREIGN KEY (`vin`)
    REFERENCES `Auto_db`.`cars` (`vin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_salesperson1`
    FOREIGN KEY (`staff_auto_id`)
    REFERENCES `Auto_db`.`salesperson` (`staff_auto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_customer_table1`
    FOREIGN KEY (`cust_auto_id`)
    REFERENCES `Auto_db`.`customer_table` (`cust_auto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
