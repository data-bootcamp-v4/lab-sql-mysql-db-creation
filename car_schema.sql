-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema car_dealer
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealer
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealer` DEFAULT CHARACTER SET utf8 ;
USE `car_dealer` ;

-- -----------------------------------------------------
-- Table `car_dealer`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealer`.`Salespersons` (
  `Staff_ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  UNIQUE INDEX `Staff_ID_UNIQUE` (`Staff_ID` ASC) VISIBLE,
  PRIMARY KEY (`Staff_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealer`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealer`.`Customers` (
  `Customer_ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Phone Number` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Zip Code` INT NULL,
  `Country` VARCHAR(45) NULL,
  `Salespersons_Staff_ID` INT NOT NULL,
  UNIQUE INDEX `Customer_ID_UNIQUE` (`Customer_ID` ASC) VISIBLE,
  PRIMARY KEY (`Customer_ID`),
  INDEX `fk_Customers_Salespersons1_idx` (`Salespersons_Staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff_ID`)
    REFERENCES `car_dealer`.`Salespersons` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealer`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealer`.`Cars` (
  `VIN` INT NOT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  `Customers_Customer_ID` INT NOT NULL,
  `Salespersons_Staff_ID` INT NOT NULL,
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  PRIMARY KEY (`VIN`),
  INDEX `fk_Cars_Customers1_idx` (`Customers_Customer_ID` ASC) VISIBLE,
  INDEX `fk_Cars_Salespersons1_idx` (`Salespersons_Staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Customers1`
    FOREIGN KEY (`Customers_Customer_ID`)
    REFERENCES `car_dealer`.`Customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff_ID`)
    REFERENCES `car_dealer`.`Salespersons` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealer`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealer`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealer`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealer`.`Invoices` (
  `Invoice Number` INT NOT NULL AUTO_INCREMENT,
  `Date` DATETIME NULL,
  `Customers_Customer_ID` INT NOT NULL,
  `Salespersons_Staff_ID` INT NOT NULL,
  `Cars_VIN` INT NOT NULL,
  PRIMARY KEY (`Invoice Number`),
  UNIQUE INDEX `Invoice Number_UNIQUE` (`Invoice Number` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_Staff_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer_ID`)
    REFERENCES `car_dealer`.`Customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff_ID`)
    REFERENCES `car_dealer`.`Salespersons` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `car_dealer`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealer`.`kvvmcvkvmd kfmg ofjm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealer`.`kvvmcvkvmd kfmg ofjm` (
  `` INT NOT NULL,
  PRIMARY KEY (``))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealer`.`Cars_has_Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealer`.`Cars_has_Customers` (
  `Cars_VIN` INT NOT NULL,
  `Customers_Customer_ID` INT NOT NULL,
  PRIMARY KEY (`Cars_VIN`, `Customers_Customer_ID`),
  INDEX `fk_Cars_has_Customers_Customers1_idx` (`Customers_Customer_ID` ASC) VISIBLE,
  INDEX `fk_Cars_has_Customers_Cars_idx` (`Cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_has_Customers_Cars`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `car_dealer`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_has_Customers_Customers1`
    FOREIGN KEY (`Customers_Customer_ID`)
    REFERENCES `car_dealer`.`Customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
