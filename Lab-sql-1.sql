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
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `staff ID` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `the store at your company` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `customer ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(12) NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal code` INT NOT NULL,
  PRIMARY KEY (`customer ID`),
  UNIQUE INDEX `customer ID_UNIQUE` (`customer ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NULL,
  `Salespersons_staff ID` VARCHAR(45) NOT NULL,
  `Customers_customer ID` INT NOT NULL,
  `Customers_Invoices_invoice number` INT NOT NULL,
  PRIMARY KEY (`VIN`, `Salespersons_staff ID`, `Customers_customer ID`, `Customers_Invoices_invoice number`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  INDEX `fk_Cars_Salespersons1_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_Cars_Customers1_idx` (`Customers_customer ID` ASC, `Customers_Invoices_invoice number` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Salespersons1`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `mydb`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Customers1`
    FOREIGN KEY (`Customers_customer ID`)
    REFERENCES `mydb`.`Customers` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `invoice number` INT NOT NULL AUTO_INCREMENT,
  `date` VARCHAR(45) NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salesperson related to each car sale` VARCHAR(45) NOT NULL,
  `Customers_customer ID` INT NOT NULL,
  `Customers_Invoices_invoice number` INT NOT NULL,
  `Cars_VIN` VARCHAR(45) NOT NULL,
  `Cars_Salespersons_staff ID` VARCHAR(45) NOT NULL,
  `Cars_Customers_customer ID` INT NOT NULL,
  `Cars_Customers_Invoices_invoice number` INT NOT NULL,
  `Salespersons_staff ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`invoice number`, `Customers_customer ID`, `Customers_Invoices_invoice number`, `Cars_VIN`, `Cars_Salespersons_staff ID`, `Cars_Customers_customer ID`, `Cars_Customers_Invoices_invoice number`, `Salespersons_staff ID`),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_customer ID` ASC, `Customers_Invoices_invoice number` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_VIN` ASC, `Cars_Salespersons_staff ID` ASC, `Cars_Customers_customer ID` ASC, `Cars_Customers_Invoices_invoice number` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_customer ID`)
    REFERENCES `mydb`.`Customers` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_VIN` , `Cars_Salespersons_staff ID` , `Cars_Customers_customer ID` , `Cars_Customers_Invoices_invoice number`)
    REFERENCES `mydb`.`Cars` (`VIN` , `Salespersons_staff ID` , `Customers_customer ID` , `Customers_Invoices_invoice number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `mydb`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers_has_Salespersons` (
  `Customers_customer ID` INT NOT NULL,
  `Salespersons_staff ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customers_customer ID`, `Salespersons_staff ID`),
  INDEX `fk_Customers_has_Salespersons_Salespersons1_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_Customers_has_Salespersons_Customers1_idx` (`Customers_customer ID` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_has_Salespersons_Customers1`
    FOREIGN KEY (`Customers_customer ID`)
    REFERENCES `mydb`.`Customers` (`customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `mydb`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
