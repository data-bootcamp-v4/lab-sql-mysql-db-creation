-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Cars` DEFAULT CHARACTER SET utf8 ;
USE `Cars` ;

-- -----------------------------------------------------
-- Table `Cars`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Customers` (
  `customer ID` INT NOT NULL AUTO_INCREMENT,
  `Customer name` VARCHAR(45) NULL,
  `phone number` INT NULL,
  `email address` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Salespersons` (
  `staff ID` INT NOT NULL AUTO_INCREMENT,
  `Staff name` VARCHAR(45) NULL,
  `customer ID` INT NULL,
  `vehicle identification number (VIN)` INT NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Invoices` (
  `invoice number` INT NOT NULL AUTO_INCREMENT,
  ` date` DATE NULL,
  `customer ID` INT NULL,
  `vehicle identification number (VIN)` INT NULL,
  `Staff ID` INT NULL,
  `Salespersons_staff ID` INT NOT NULL,
  `Customers_customer ID` INT NOT NULL,
  PRIMARY KEY (`invoice number`, `Salespersons_staff ID`, `Customers_customer ID`),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_customer ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `Cars`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_customer ID`)
    REFERENCES `Cars`.`Customers` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Cars` (
  `vehicle identification number (VIN)` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` INT NULL,
  `color` VARCHAR(45) NULL,
  `customer ID` INT NULL,
  `Customers_customer ID` INT NOT NULL,
  `Invoices_invoice number` INT NOT NULL,
  PRIMARY KEY (`vehicle identification number (VIN)`, `Customers_customer ID`, `Invoices_invoice number`),
  INDEX `fk_Cars_Customers_idx` (`Customers_customer ID` ASC) VISIBLE,
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_invoice number` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Customers`
    FOREIGN KEY (`Customers_customer ID`)
    REFERENCES `Cars`.`Customers` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_invoice number`)
    REFERENCES `Cars`.`Invoices` (`invoice number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Salespersons_has_Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Salespersons_has_Cars` (
  `Salespersons_staff ID` INT NOT NULL,
  `Cars_vehicle identification number (VIN)` INT NOT NULL,
  `Cars_Customers_customer ID` INT NOT NULL,
  `Cars_Invoices_invoice number` INT NOT NULL,
  PRIMARY KEY (`Salespersons_staff ID`, `Cars_vehicle identification number (VIN)`, `Cars_Customers_customer ID`, `Cars_Invoices_invoice number`),
  INDEX `fk_Salespersons_has_Cars_Cars1_idx` (`Cars_vehicle identification number (VIN)` ASC, `Cars_Customers_customer ID` ASC, `Cars_Invoices_invoice number` ASC) VISIBLE,
  INDEX `fk_Salespersons_has_Cars_Salespersons1_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Salespersons_has_Cars_Salespersons1`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `Cars`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salespersons_has_Cars_Cars1`
    FOREIGN KEY (`Cars_vehicle identification number (VIN)` , `Cars_Customers_customer ID` , `Cars_Invoices_invoice number`)
    REFERENCES `Cars`.`Cars` (`vehicle identification number (VIN)` , `Customers_customer ID` , `Invoices_invoice number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Customers_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Customers_has_Salespersons` (
  `Customers_customer ID` INT NOT NULL,
  `Salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`Customers_customer ID`, `Salespersons_staff ID`),
  INDEX `fk_Customers_has_Salespersons_Salespersons1_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_Customers_has_Salespersons_Customers1_idx` (`Customers_customer ID` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_has_Salespersons_Customers1`
    FOREIGN KEY (`Customers_customer ID`)
    REFERENCES `Cars`.`Customers` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `Cars`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
