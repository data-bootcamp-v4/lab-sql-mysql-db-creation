-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;
USE `mydb`;

-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `auto_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `phone` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip` INT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`auto_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salesperson` (
  `auto_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  `staff` INT NOT NULL,
  PRIMARY KEY (`auto_id`),
  UNIQUE INDEX `staff_UNIQUE` (`staff` ASC) VISIBLE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `auto_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NULL,
  `car` VARCHAR(45) NULL,
  `customer_id` INT UNSIGNED NOT NULL,  -- Ensure this matches `customers.auto_id`
  `salesperson_id` INT NOT NULL,
  `invoice_nr` INT NOT NULL,
  PRIMARY KEY (`auto_id`),
  UNIQUE INDEX `invoice_nr_UNIQUE` (`invoice_nr` ASC) VISIBLE,
  FOREIGN KEY (`customer_id`) REFERENCES `mydb`.`customers` (`auto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (`salesperson_id`) REFERENCES `mydb`.`salesperson` (`auto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `auto_id` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` INT NULL,
  `color` VARCHAR(45) NULL,
  `customer_id` INT UNSIGNED NOT NULL,  -- Ensure this matches `customers.auto_id`
  `invoice_nr` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`auto_id`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  FOREIGN KEY (`customer_id`) REFERENCES `mydb`.`customers` (`auto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (`invoice_nr`) REFERENCES `mydb`.`invoices` (`invoice_nr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`customers_has_salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers_has_salesperson` (
  `customer_auto_id` INT UNSIGNED NOT NULL,
  `salesperson_auto_id` INT NOT NULL,
  PRIMARY KEY (`customer_auto_id`, `salesperson_auto_id`),
  FOREIGN KEY (`customer_auto_id`) REFERENCES `mydb`.`customers` (`auto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (`salesperson_auto_id`) REFERENCES `mydb`.`salesperson` (`auto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;