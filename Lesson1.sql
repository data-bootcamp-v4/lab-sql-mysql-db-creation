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
-- Table `mydb`.`Auto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Auto` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `salespersons` VARCHAR(45) NULL,
  `invoices` VARCHAR(45) NULL,
  `Auto_VIN` INT NOT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `Customer ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone Number` INT NULL,
  `email` VARCHAR(45) NULL,
  `ZIP` INT NULL,
  `Auto_VIN` INT NOT NULL,
  PRIMARY KEY (`Auto_VIN`),
  CONSTRAINT `fk_customers_Auto`
    FOREIGN KEY (`Auto_VIN`)
    REFERENCES `mydb`.`Auto` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `idinvoices` INT NOT NULL,
  `date` DATETIME NULL,
  `car` INT NULL,
  `customer` VARCHAR(45) NULL,
  `salesperson` VARCHAR(45) NULL,
  `customers_Auto_VIN` INT NOT NULL,
  PRIMARY KEY (`customers_Auto_VIN`),
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_Auto_VIN`)
    REFERENCES `mydb`.`customers` (`Auto_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `staff id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  `Auto_VIN` INT NOT NULL,
  `invoices_customers_Auto_VIN` INT NOT NULL,
  INDEX `fk_salespersons_Auto1_idx` (`Auto_VIN` ASC) VISIBLE,
  PRIMARY KEY (`invoices_customers_Auto_VIN`),
  CONSTRAINT `fk_salespersons_Auto1`
    FOREIGN KEY (`Auto_VIN`)
    REFERENCES `mydb`.`Auto` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_salespersons_invoices1`
    FOREIGN KEY (`invoices_customers_Auto_VIN`)
    REFERENCES `mydb`.`invoices` (`customers_Auto_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
