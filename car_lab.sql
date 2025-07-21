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
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson` (
  `SID` INT NOT NULL AUTO_INCREMENT,
  `ids` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`SID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `CID` INT NOT NULL,
  `idc` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `phone` INT NULL,
  `email` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip` VARCHAR(45) NULL,
  PRIMARY KEY (`CID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `invoice_no` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NULL,
  `car` VARCHAR(45) NULL,
  `customer` VARCHAR(45) NULL,
  `salesperson` VARCHAR(45) NULL,
  `Salesperson_SID` INT NOT NULL,
  `Customers_CID` INT NOT NULL,
  PRIMARY KEY (`invoice_no`),
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_SID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_CID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_SID`)
    REFERENCES `mydb`.`Salesperson` (`SID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_CID`)
    REFERENCES `mydb`.`Customers` (`CID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `vin` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` DATETIME NULL,
  `colour` VARCHAR(45) NULL,
  `Salesperson_SID` INT NOT NULL,
  `Invoices_invoice_no` INT NOT NULL,
  PRIMARY KEY (`vin`),
  INDEX `fk_Cars_Salesperson_idx` (`Salesperson_SID` ASC) VISIBLE,
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_invoice_no` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Salesperson`
    FOREIGN KEY (`Salesperson_SID`)
    REFERENCES `mydb`.`Salesperson` (`SID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_invoice_no`)
    REFERENCES `mydb`.`Invoices` (`invoice_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Customers` (
  `Salesperson_SID` INT NOT NULL,
  PRIMARY KEY (`Salesperson_SID`),
  INDEX `fk_Salesperson_has_Customers_Salesperson1_idx` (`Salesperson_SID` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customers_Salesperson1`
    FOREIGN KEY (`Salesperson_SID`)
    REFERENCES `mydb`.`Salesperson` (`SID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
