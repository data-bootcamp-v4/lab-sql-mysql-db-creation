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
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`Staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customer ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Surname` VARCHAR(45) NULL,
  `Phone Number` VARCHAR(15) NULL,
  `E-Mail` VARCHAR(45) NULL,
  `Adress` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `ZIP Postal Code` VARCHAR(45) NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `Invoice Number` INT NOT NULL,
  `Date` DATE NULL,
  `Car` VARCHAR(45) NULL,
  `Salesperson_Staff ID` INT NOT NULL,
  `Customers_Customer ID` INT NOT NULL,
  PRIMARY KEY (`Invoice Number`),
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_Staff ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_Staff ID`)
    REFERENCES `mydb`.`Salesperson` (`Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer ID`)
    REFERENCES `mydb`.`Customers` (`Customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `Vehicle ID Number` INT NOT NULL,
  `Manufacturar` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR NULL,
  `Colour` VARCHAR(45) NULL,
  `Salesperson_Staff ID` INT NOT NULL,
  `Invoices_Invoice Number` INT NOT NULL,
  `Customers_Customer ID` INT NOT NULL,
  PRIMARY KEY (`Vehicle ID Number`),
  INDEX `fk_Cars_Salesperson_idx` (`Salesperson_Staff ID` ASC) VISIBLE,
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_Invoice Number` ASC) VISIBLE,
  INDEX `fk_Cars_Customers1_idx` (`Customers_Customer ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Salesperson`
    FOREIGN KEY (`Salesperson_Staff ID`)
    REFERENCES `mydb`.`Salesperson` (`Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_Invoice Number`)
    REFERENCES `mydb`.`Invoices` (`Invoice Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Customers1`
    FOREIGN KEY (`Customers_Customer ID`)
    REFERENCES `mydb`.`Customers` (`Customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Customers` (
  `Salesperson_Staff ID` INT NOT NULL,
  `Customers_Customer ID` INT NOT NULL,
  PRIMARY KEY (`Salesperson_Staff ID`, `Customers_Customer ID`),
  INDEX `fk_Salesperson_has_Customers_Customers1_idx` (`Customers_Customer ID` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Customers_Salesperson1_idx` (`Salesperson_Staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customers_Salesperson1`
    FOREIGN KEY (`Salesperson_Staff ID`)
    REFERENCES `mydb`.`Salesperson` (`Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Customers_Customers1`
    FOREIGN KEY (`Customers_Customer ID`)
    REFERENCES `mydb`.`Customers` (`Customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
