-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_creation
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema university_schema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema university_schema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `university_schema` DEFAULT CHARACTER SET utf8mb3 ;
USE `university_schema` ;

-- -----------------------------------------------------
-- Table `university_schema`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `university_schema`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phone_number` INT NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `postal_code` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `university_schema`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `university_schema`.`salespersons` (
  `stuff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`stuff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `university_schema`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `university_schema`.`invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` VARCHAR(45) NULL DEFAULT NULL,
  `car` VARCHAR(45) NULL DEFAULT NULL,
  `customer` VARCHAR(45) NULL DEFAULT NULL,
  `salesperson` VARCHAR(45) NULL DEFAULT NULL,
  `customers_customer_id` INT NOT NULL,
  `salespersons_stuff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`),
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_stuff_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `university_schema`.`customers` (`customer_id`),
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_stuff_id`)
    REFERENCES `university_schema`.`salespersons` (`stuff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `university_schema`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `university_schema`.`cars` (
  `VIN` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  `invoices_invoice_number` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `salespersons_stuff_id` INT NOT NULL,
  PRIMARY KEY (`VIN`),
  INDEX `fk_cars_invoices1_idx` (`invoices_invoice_number` ASC) VISIBLE,
  INDEX `fk_cars_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_cars_salespersons1_idx` (`salespersons_stuff_id` ASC) VISIBLE,
  CONSTRAINT `fk_cars_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `university_schema`.`customers` (`customer_id`),
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `university_schema`.`invoices` (`invoice_number`),
  CONSTRAINT `fk_cars_salespersons1`
    FOREIGN KEY (`salespersons_stuff_id`)
    REFERENCES `university_schema`.`salespersons` (`stuff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `university_schema`.`salespersons_has_customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `university_schema`.`salespersons_has_customers` (
  `salespersons_stuff_id` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  PRIMARY KEY (`salespersons_stuff_id`, `customers_customer_id`),
  INDEX `fk_salespersons_has_customers_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_salespersons_has_customers_salespersons1_idx` (`salespersons_stuff_id` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_has_customers_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `university_schema`.`customers` (`customer_id`),
  CONSTRAINT `fk_salespersons_has_customers_salespersons1`
    FOREIGN KEY (`salespersons_stuff_id`)
    REFERENCES `university_schema`.`salespersons` (`stuff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
