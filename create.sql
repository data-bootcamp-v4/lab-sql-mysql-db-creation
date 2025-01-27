-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema beforefridaylab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema beforefridaylab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beforefridaylab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `beforefridaylab` ;

-- -----------------------------------------------------
-- Table `beforefridaylab`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beforefridaylab`.`Salesperson` (
  `idSalesperson` INT NOT NULL,
  `SalesIncrement` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalesperson`),
  UNIQUE INDEX `idSalesperson_UNIQUE` (`idSalesperson` ASC) VISIBLE,
  UNIQUE INDEX `SalesIncrement_UNIQUE` (`SalesIncrement` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `beforefridaylab`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beforefridaylab`.`Address` (
  `idAddress` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `Street and apt number` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `ZIP Code` INT NULL,
  PRIMARY KEY (`idAddress`),
  UNIQUE INDEX `idAddress_UNIQUE` (`idAddress` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `beforefridaylab`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beforefridaylab`.`Customers` (
  `CustomerID` INT NOT NULL,
  `Customerincrement` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `CustomerPhoneNumber` INT NULL,
  `Address_idAddress` INT ZEROFILL NOT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE INDEX `CustomerID_UNIQUE` (`CustomerID` ASC) VISIBLE,
  UNIQUE INDEX `Customerincrement_UNIQUE` (`Customerincrement` ASC) VISIBLE,
  INDEX `fk_Customers_Address_idx` (`Address_idAddress` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Address`
    FOREIGN KEY (`Address_idAddress`)
    REFERENCES `beforefridaylab`.`Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `beforefridaylab`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beforefridaylab`.`Invoice` (
  `idInvoice` INT NOT NULL,
  `InvoiceIncrement` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `Date` DATE NOT NULL,
  `Salesperson_idSalesperson` INT NOT NULL,
  `Customers_CustomerID` INT NOT NULL,
  PRIMARY KEY (`idInvoice`),
  UNIQUE INDEX `idInvoice_UNIQUE` (`idInvoice` ASC) VISIBLE,
  UNIQUE INDEX `InvoiceIncrement_UNIQUE` (`InvoiceIncrement` ASC) VISIBLE,
  INDEX `fk_Invoice_Salesperson1_idx` (`Salesperson_idSalesperson` ASC) VISIBLE,
  INDEX `fk_Invoice_Customers1_idx` (`Customers_CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_Salesperson1`
    FOREIGN KEY (`Salesperson_idSalesperson`)
    REFERENCES `beforefridaylab`.`Salesperson` (`idSalesperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Customers1`
    FOREIGN KEY (`Customers_CustomerID`)
    REFERENCES `beforefridaylab`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `beforefridaylab`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beforefridaylab`.`CARS` (
  `VIN` INT NOT NULL,
  `Increment` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  `Invoice_idInvoice` INT NOT NULL,
  PRIMARY KEY (`VIN`),
  UNIQUE INDEX `idfirsttable_UNIQUE` (`VIN` ASC) VISIBLE,
  UNIQUE INDEX `Increment_UNIQUE` (`Increment` ASC) VISIBLE,
  INDEX `fk_CARS_Invoice1_idx` (`Invoice_idInvoice` ASC) VISIBLE,
  CONSTRAINT `fk_CARS_Invoice1`
    FOREIGN KEY (`Invoice_idInvoice`)
    REFERENCES `beforefridaylab`.`Invoice` (`idInvoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
