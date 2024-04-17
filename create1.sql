-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8 ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `invoices_invoice number` INT NOT NULL,
  `customers_ID` INT NOT NULL,
  `salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`VIN`, `year`, `invoices_invoice number`, `customers_ID`, `salespersons_staff ID`),
  INDEX `fk_cars_invoices_idx` (`invoices_invoice number` ASC) VISIBLE,
  INDEX `fk_cars_customers1_idx` (`customers_ID` ASC) VISIBLE,
  INDEX `fk_cars_salespersons1_idx` (`salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_cars_invoices`
    FOREIGN KEY (`invoices_invoice number`)
    REFERENCES `cars`.`invoices` (`invoice number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_customers1`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `cars`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_salespersons1`
    FOREIGN KEY (`salespersons_staff ID`)
    REFERENCES `cars`.`salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`customers` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `customerscol`  NOT NULL,
  `postal` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`salespersons` (
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`invoices` (
  `invoice number` INT NOT NULL,
  `date` INT NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salesperosn related` VARCHAR(45) NOT NULL,
  `customers_ID` INT NOT NULL,
  `salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`invoice number`, `customers_ID`, `salespersons_staff ID`),
  INDEX `fk_invoices_customers1_idx` (`customers_ID` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `cars`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_staff ID`)
    REFERENCES `cars`.`salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `invoices_invoice number` INT NOT NULL,
  `customers_ID` INT NOT NULL,
  `salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`VIN`, `year`, `invoices_invoice number`, `customers_ID`, `salespersons_staff ID`),
  INDEX `fk_cars_invoices_idx` (`invoices_invoice number` ASC) VISIBLE,
  INDEX `fk_cars_customers1_idx` (`customers_ID` ASC) VISIBLE,
  INDEX `fk_cars_salespersons1_idx` (`salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_cars_invoices`
    FOREIGN KEY (`invoices_invoice number`)
    REFERENCES `cars`.`invoices` (`invoice number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_customers1`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `cars`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_salespersons1`
    FOREIGN KEY (`salespersons_staff ID`)
    REFERENCES `cars`.`salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`customers_has_salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`customers_has_salespersons` (
  `customers_ID` INT NOT NULL,
  `salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`customers_ID`, `salespersons_staff ID`),
  INDEX `fk_customers_has_salespersons_salespersons1_idx` (`salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_customers_has_salespersons_customers1_idx` (`customers_ID` ASC) VISIBLE,
  CONSTRAINT `fk_customers_has_salespersons_customers1`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `cars`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_salespersons_salespersons1`
    FOREIGN KEY (`salespersons_staff ID`)
    REFERENCES `cars`.`salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
