-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab-db-creation
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab-db-creation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab-db-creation` DEFAULT CHARACTER SET utf8 ;
USE `lab-db-creation` ;

-- -----------------------------------------------------
-- Table `lab-db-creation`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-db-creation`.`cars` (
  `VIN` VARCHAR(17) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-db-creation`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-db-creation`.`salespersons` (
  `idsalespersons` INT NOT NULL AUTO_INCREMENT,
  `staff_id` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idsalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-db-creation`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-db-creation`.`customers` (
  `idcustomers` INT NOT NULL AUTO_INCREMENT,
  `cust_id` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `postal_code` VARCHAR(45) NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab-db-creation`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab-db-creation`.`invoices` (
  `idinvoices` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `cars_VIN` VARCHAR(17) NOT NULL,
  `salespersons_idsalespersons` INT NOT NULL,
  `customers_idcustomers` INT NOT NULL,
  PRIMARY KEY (`idinvoices`),
  INDEX `fk_invoices_cars_idx` (`cars_VIN` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_idsalespersons` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_idcustomers` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`cars_VIN`)
    REFERENCES `lab-db-creation`.`cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_idsalespersons`)
    REFERENCES `lab-db-creation`.`salespersons` (`idsalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `lab-db-creation`.`customers` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
