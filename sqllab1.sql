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
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `Invoice Number` INT NOT NULL AUTO_INCREMENT,
  `Date` DATETIME NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Salesperso` VARCHAR(45) NULL,
  PRIMARY KEY (`Invoice Number`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customer ID` INT NOT NULL AUTO_INCREMENT,
  `Phone Number` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State / Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Post Code` INT NULL,
  `Invoices_Invoice Number` INT NOT NULL,
  PRIMARY KEY (`Customer ID`, `Invoices_Invoice Number`),
  INDEX `fk_Customers_Invoices1_idx` (`Invoices_Invoice Number` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Invoices1`
    FOREIGN KEY (`Invoices_Invoice Number`)
    REFERENCES `mydb`.`Invoices` (`Invoice Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SalesPersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SalesPersons` (
  `idSalesPersons` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  `Invoices_Invoice Number` INT NOT NULL,
  PRIMARY KEY (`idSalesPersons`, `Invoices_Invoice Number`),
  INDEX `fk_SalesPersons_Invoices1_idx` (`Invoices_Invoice Number` ASC) VISIBLE,
  CONSTRAINT `fk_SalesPersons_Invoices1`
    FOREIGN KEY (`Invoices_Invoice Number`)
    REFERENCES `mydb`.`Invoices` (`Invoice Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `Vehicle Id Number` INT NOT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NOT NULL,
  `Colour` VARCHAR(45) NULL,
  `Invoices_Invoice Number` INT NOT NULL,
  PRIMARY KEY (`Vehicle Id Number`, `Invoices_Invoice Number`),
  UNIQUE INDEX `Vehicle Id Number_UNIQUE` (`Vehicle Id Number` ASC) VISIBLE,
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_Invoice Number` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_Invoice Number`)
    REFERENCES `mydb`.`Invoices` (`Invoice Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
