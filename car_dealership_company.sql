-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealership` DEFAULT CHARACTER SET utf8mb3 ;
USE `car_dealership` ;

-- -----------------------------------------------------
-- Table `car_dealership`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`Customers` (
  `Customer ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Phone number` INT NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(45) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `State / Province` VARCHAR(45) NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `ZIP / Postal Code` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_dealership`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`Salesperson` (
  `Staff_ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_dealership`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`Invoices` (
  `Invoice number` INT NOT NULL,
  `Date` VARCHAR(45) NULL DEFAULT NULL,
  `Car` VARCHAR(45) NULL DEFAULT NULL,
  `Customers_Customer ID` INT NOT NULL,
  `Salesperson_Staff_ID` INT NOT NULL,
  PRIMARY KEY (`Invoice number`),
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_Staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer ID`)
    REFERENCES `car_dealership`.`Customers` (`Customer ID`),
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_Staff_ID`)
    REFERENCES `car_dealership`.`Salesperson` (`Staff_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_dealership`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`Cars` (
  `vehicle identification number (VIN)` INT NOT NULL AUTO_INCREMENT,
  `Manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `Model` VARCHAR(45) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  `Customers_Customer ID` INT NOT NULL,
  `Salesperson_Staff_ID` INT NOT NULL,
  `Invoices_Invoice number` INT NOT NULL,
  PRIMARY KEY (`vehicle identification number (VIN)`),
  INDEX `fk_Cars_Customers_idx` (`Customers_Customer ID` ASC) VISIBLE,
  INDEX `fk_Cars_Salesperson1_idx` (`Salesperson_Staff_ID` ASC) VISIBLE,
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_Invoice number` ASC) VISIBLE,
  UNIQUE INDEX `vehicle identification number (VIN)_UNIQUE` (`vehicle identification number (VIN)` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Customers`
    FOREIGN KEY (`Customers_Customer ID`)
    REFERENCES `car_dealership`.`Customers` (`Customer ID`),
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_Invoice number`)
    REFERENCES `car_dealership`.`Invoices` (`Invoice number`),
  CONSTRAINT `fk_Cars_Salesperson1`
    FOREIGN KEY (`Salesperson_Staff_ID`)
    REFERENCES `car_dealership`.`Salesperson` (`Staff_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_dealership`.`Salesperson_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`Salesperson_has_Customers` (
  `Salesperson_Staff_ID` INT NOT NULL,
  `Customers_Customer ID` INT NOT NULL,
  PRIMARY KEY (`Salesperson_Staff_ID`, `Customers_Customer ID`),
  INDEX `fk_Salesperson_has_Customers_Customers1_idx` (`Customers_Customer ID` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Customers_Salesperson1_idx` (`Salesperson_Staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customers_Salesperson1`
    FOREIGN KEY (`Salesperson_Staff_ID`)
    REFERENCES `car_dealership`.`Salesperson` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Customers_Customers1`
    FOREIGN KEY (`Customers_Customer ID`)
    REFERENCES `car_dealership`.`Customers` (`Customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
