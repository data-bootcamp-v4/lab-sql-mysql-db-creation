-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car_sales
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_sales
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_sales` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `car_sales` ;

-- -----------------------------------------------------
-- Table `car_sales`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_sales`.`customers` (
  `customerID` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone_number` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  PRIMARY KEY (`customerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_sales`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_sales`.`salespersons` (
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  `Cars_VIN1` INT NOT NULL,
  `Cars_salespersons_staff ID` INT NOT NULL,
  `Cars_salespersons_Cars_VIN` INT NOT NULL,
  `Cars_VIN2` INT NOT NULL,
  `Cars_salespersons_staff ID1` INT NOT NULL,
  `Cars_salespersons_Cars_VIN1` INT NOT NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_sales`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_sales`.`invoices` (
  `invoice_number` INT NOT NULL COMMENT 'nvoice number, date, car, customer, and salesperson ',
  `date` INT NULL,
  `car` VARCHAR(45) NULL,
  `customer` VARCHAR(45) NULL,
  `sales person` INT NULL,
  `customers_customerID` VARCHAR(45) NOT NULL,
  `salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `customers_customerID`, `salespersons_staff ID`),
  UNIQUE INDEX `Invoice Number_UNIQUE` (`invoice_number` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customerID` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customerID`)
    REFERENCES `car_sales`.`customers` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_staff ID`)
    REFERENCES `car_sales`.`salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_sales`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_sales`.`Cars` (
  `VIN` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `customers_customerID` VARCHAR(45) NOT NULL,
  `invoices_invoice_number1` INT NOT NULL,
  `salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`VIN`, `salespersons_staff ID`, `invoices_invoice_number1`, `customers_customerID`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  UNIQUE INDEX `Manufacturer_UNIQUE` (`manufacturer` ASC) VISIBLE,
  UNIQUE INDEX `Model_UNIQUE` (`model` ASC) VISIBLE,
  UNIQUE INDEX `Year_UNIQUE` (`year` ASC) VISIBLE,
  UNIQUE INDEX `Color_UNIQUE` (`color` ASC) VISIBLE,
  INDEX `fk_Cars_customers1_idx` (`customers_customerID` ASC) VISIBLE,
  INDEX `fk_Cars_invoices2_idx` (`invoices_invoice_number1` ASC) VISIBLE,
  INDEX `fk_Cars_salespersons1_idx` (`salespersons_staff ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_customers1`
    FOREIGN KEY (`customers_customerID`)
    REFERENCES `car_sales`.`customers` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_invoices2`
    FOREIGN KEY (`invoices_invoice_number1`)
    REFERENCES `car_sales`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_salespersons1`
    FOREIGN KEY (`salespersons_staff ID`)
    REFERENCES `car_sales`.`salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_sales`.`customers_has_salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_sales`.`customers_has_salespersons` (
  `customers_customerID` VARCHAR(45) NOT NULL,
  `salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`customers_customerID`, `salespersons_staff ID`),
  INDEX `fk_customers_has_salespersons_salespersons1_idx` (`salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_customers_has_salespersons_customers1_idx` (`customers_customerID` ASC) VISIBLE,
  CONSTRAINT `fk_customers_has_salespersons_customers1`
    FOREIGN KEY (`customers_customerID`)
    REFERENCES `car_sales`.`customers` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_salespersons_salespersons1`
    FOREIGN KEY (`salespersons_staff ID`)
    REFERENCES `car_sales`.`salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
