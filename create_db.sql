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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` INT NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `staff_id` INT NOT NULL,
  `staff_name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_number` INT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `customers_customer_id`, `salespersons_staff_id`),
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_staff_id` ASC) VISIBLE,
  UNIQUE INDEX `invoice_number_UNIQUE` (`invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_staff_id`)
    REFERENCES `mydb`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `vin` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NOT NULL,
  `colour` VARCHAR(45) NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  `salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`vin`, `customers_customer_id`, `invoices_invoice_number`, `salespersons_staff_id`),
  INDEX `fk_cars_customers_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_cars_invoices1_idx` (`invoices_invoice_number` ASC) VISIBLE,
  INDEX `fk_cars_salespersons1_idx` (`salespersons_staff_id` ASC) VISIBLE,
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE,
  CONSTRAINT `fk_cars_customers`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `mydb`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_salespersons1`
    FOREIGN KEY (`salespersons_staff_id`)
    REFERENCES `mydb`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`client_relationships`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`client_relationships` (
  `customers_customer_id` INT NOT NULL,
  `salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`customers_customer_id`, `salespersons_staff_id`),
  INDEX `fk_customers_has_salespersons_salespersons1_idx` (`salespersons_staff_id` ASC) VISIBLE,
  INDEX `fk_customers_has_salespersons_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_has_salespersons_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_salespersons_salespersons1`
    FOREIGN KEY (`salespersons_staff_id`)
    REFERENCES `mydb`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
