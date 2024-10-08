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
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `car_vin` VARCHAR(45) NOT NULL,
  `customer_id` INT NOT NULL,
  `salesperson_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`),
  UNIQUE INDEX `invoice_number_UNIQUE` (`invoice_number` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(45) NOT NULL,
  `customer_phone_number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip` INT NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  PRIMARY KEY (`customer_id`),
  INDEX `fk_customers_invoices1_idx` (`invoices_invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_customers_invoices1`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `mydb`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  `customers_customer_id1` INT NOT NULL,
  PRIMARY KEY (`VIN`, `customers_customer_id`),
  INDEX `fk_cars_invoices2_idx` (`invoices_invoice_number` ASC) VISIBLE,
  INDEX `fk_cars_customers1_idx` (`customers_customer_id1` ASC) VISIBLE,
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  CONSTRAINT `fk_cars_invoices2`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `mydb`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_customers1`
    FOREIGN KEY (`customers_customer_id1`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `staff_ID` INT NOT NULL AUTO_INCREMENT,
  `staff_name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `cars_VIN` VARCHAR(45) NOT NULL,
  `cars_customers_customer_id` INT NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  PRIMARY KEY (`staff_ID`),
  UNIQUE INDEX `idsalespersons_UNIQUE` (`staff_ID` ASC) VISIBLE,
  INDEX `fk_salespersons_cars1_idx` (`cars_VIN` ASC, `cars_customers_customer_id` ASC) VISIBLE,
  INDEX `fk_salespersons_invoices1_idx` (`invoices_invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_cars1`
    FOREIGN KEY (`cars_VIN` , `cars_customers_customer_id`)
    REFERENCES `mydb`.`cars` (`VIN` , `customers_customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_salespersons_invoices1`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `mydb`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers_has_salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers_has_salespersons` (
  `customers_customer_id` INT NOT NULL,
  `salespersons_staff_ID` INT NOT NULL,
  PRIMARY KEY (`customers_customer_id`, `salespersons_staff_ID`),
  INDEX `fk_customers_has_salespersons_salespersons1_idx` (`salespersons_staff_ID` ASC) VISIBLE,
  INDEX `fk_customers_has_salespersons_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_has_salespersons_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_salespersons_salespersons1`
    FOREIGN KEY (`salespersons_staff_ID`)
    REFERENCES `mydb`.`salespersons` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
