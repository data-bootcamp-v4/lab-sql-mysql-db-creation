-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_db_creation
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `lab_db_creation` ;

-- -----------------------------------------------------
-- Schema lab_db_creation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_db_creation` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `lab_db_creation` ;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`Cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`Cars` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`Cars` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(50) NULL COMMENT 'Vehicle Identification Number',
  `manufacturer` VARCHAR(50) NULL,
  `model` VARCHAR(50) NULL,
  `year` INT NULL,
  `color` VARCHAR(20) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`Customers` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`Customers` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `customerID` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  `phone_number` VARCHAR(20) NULL,
  `email` VARCHAR(100) NULL,
  `address` VARCHAR(255) NULL,
  `city` VARCHAR(100) NULL,
  `state/province` VARCHAR(100) NULL,
  `country` VARCHAR(100) NULL,
  `zip/postal code` VARCHAR(20) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`Salespersons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`Salespersons` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`Salespersons` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `staffID` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  `store` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`invoices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`invoices` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`invoices` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` INT NOT NULL,
  `invoice_date` DATE NOT NULL,
  `car` INT NOT NULL,
  `customer` INT NOT NULL,
  `salesperson` INT NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`car`)
    REFERENCES `lab_db_creation`.`Cars` (`ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`customer`)
    REFERENCES `lab_db_creation`.`Customers` (`ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Invoices_Salesperson`
    FOREIGN KEY (`salesperson`)
    REFERENCES `lab_db_creation`.`Salespersons` (`ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `ID_idx` ON `lab_db_creation`.`invoices` (`car` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_Invoices_Customers1_idx` ON `lab_db_creation`.`invoices` (`customer` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_Invoices_Salesperson_idx` ON `lab_db_creation`.`invoices` (`salesperson` ASC) VISIBLE;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

