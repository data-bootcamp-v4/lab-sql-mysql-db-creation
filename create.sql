-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fail
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fail
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fail` DEFAULT CHARACTER SET utf8mb3 ;
USE `fail` ;

-- -----------------------------------------------------
-- Table `fail`.`sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fail`.`sales_person` (
  `staffID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staffID`),
  UNIQUE INDEX `staffID_UNIQUE` (`staffID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `fail`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fail`.`cars` (
  `VIN` VARCHAR(45) NOT NULL,
  `manufactor` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` YEAR NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  `customers_customerID` INT NOT NULL,
  `sales_person_staffID` INT NOT NULL,
  PRIMARY KEY (`VIN`, `customers_customerID`, `sales_person_staffID`),
  INDEX `fk_Cars_Customers_idx` (`customers_customerID` ASC) VISIBLE,
  INDEX `fk_Cars_sales_person1_idx` (`sales_person_staffID` ASC) VISIBLE,
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Customers`
    FOREIGN KEY (`customers_customerID`)
    REFERENCES `fail`.`customers` (`customerID`),
  CONSTRAINT `fk_Cars_sales_person1`
    FOREIGN KEY (`sales_person_staffID`)
    REFERENCES `fail`.`sales_person` (`staffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `fail`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fail`.`invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customerID` VARCHAR(45) NOT NULL,
  `staffID` VARCHAR(45) NOT NULL,
  `cars_VIN` VARCHAR(45) NOT NULL,
  `customers_customerID` INT NOT NULL,
  `sales_person_staffID` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `cars_VIN`, `customers_customerID`, `sales_person_staffID`),
  INDEX `fk_Invoices_Cars1_idx` (`cars_VIN` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`customers_customerID` ASC) VISIBLE,
  UNIQUE INDEX `invoice_number_UNIQUE` (`invoice_number` ASC) VISIBLE,
  INDEX `fk_invoices_sales_person1_idx` (`sales_person_staffID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`cars_VIN`)
    REFERENCES `fail`.`cars` (`VIN`),
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`customers_customerID`)
    REFERENCES `fail`.`customers` (`customerID`),
  CONSTRAINT `fk_invoices_sales_person1`
    FOREIGN KEY (`sales_person_staffID`)
    REFERENCES `fail`.`sales_person` (`staffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `fail`.`customers_has_sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fail`.`customers_has_sales_person` (
  `Customers_customerID` INT NOT NULL,
  `sales_person_staffID` INT NOT NULL,
  PRIMARY KEY (`Customers_customerID`, `sales_person_staffID`),
  INDEX `fk_Customers_has_sales_person_sales_person1_idx` (`sales_person_staffID` ASC) VISIBLE,
  INDEX `fk_Customers_has_sales_person_Customers1_idx` (`Customers_customerID` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_has_sales_person_Customers1`
    FOREIGN KEY (`Customers_customerID`)
    REFERENCES `fail`.`customers` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_has_sales_person_sales_person1`
    FOREIGN KEY (`sales_person_staffID`)
    REFERENCES `fail`.`sales_person` (`staffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
