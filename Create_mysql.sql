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
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customer_Id` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone number` BIGINT(10) NULL,
  `email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State_Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip_Postal_code` INT NULL,
  PRIMARY KEY (`Customer_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `Staff_Id` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store in the Company` VARCHAR(45) NULL,
  PRIMARY KEY (`Staff_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `Vehicle_Id_No` INT NOT NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR(4) NULL,
  `Coloor` VARCHAR(45) NULL,
  `Customers_Customer_Id` INT NOT NULL,
  `Salespersons_Staff_Id` INT NOT NULL,
  PRIMARY KEY (`Vehicle_Id_No`, `Salespersons_Staff_Id`),
  INDEX `fk_Cars_Customers_idx` (`Customers_Customer_Id` ASC) VISIBLE,
  INDEX `fk_Cars_Salespersons1_idx` (`Salespersons_Staff_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Customers`
    FOREIGN KEY (`Customers_Customer_Id`)
    REFERENCES `mydb`.`Customers` (`Customer_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff_Id`)
    REFERENCES `mydb`.`Salespersons` (`Staff_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `Invoices_Id` INT NOT NULL,
  `Date` DATE NULL,
  `Car` VARCHAR(45) NULL,
  `Salespersons_Staff_Id` INT NOT NULL,
  `Customers_Customer_Id` INT NOT NULL,
  PRIMARY KEY (`Invoices_Id`, `Customers_Customer_Id`),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_Staff_Id` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff_Id`)
    REFERENCES `mydb`.`Salespersons` (`Staff_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer_Id`)
    REFERENCES `mydb`.`Customers` (`Customer_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
