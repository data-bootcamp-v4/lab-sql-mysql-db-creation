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
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `customer id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` INT NOT NULL,
  `adress` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `ZIP/postal code` INT NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `idcustomers_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `customer id_UNIQUE` (`customer id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`store` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `store id` INT NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `staff id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `store_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `store_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `fk_salespersons_store1_idx` (`store_ID` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_store1`
    FOREIGN KEY (`store_ID`)
    REFERENCES `mydb`.`store` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` INT NOT NULL,
  `salesperson` INT NOT NULL,
  `customers_ID` INT NOT NULL,
  `salespersons_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `customers_ID`, `salespersons_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `fk_invoices_customers_idx` (`customers_ID` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `mydb`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_ID`)
    REFERENCES `mydb`.`salespersons` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `customers_ID` INT NOT NULL,
  `invoices_ID` INT NOT NULL,
  `invoices_customers_ID` INT NOT NULL,
  `invoices_salespersons_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `customers_ID`, `invoices_ID`, `invoices_customers_ID`, `invoices_salespersons_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `fk_cars_customers1_idx` (`customers_ID` ASC) VISIBLE,
  INDEX `fk_cars_invoices1_idx` (`invoices_ID` ASC, `invoices_customers_ID` ASC, `invoices_salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_cars_customers1`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `mydb`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_ID` , `invoices_customers_ID` , `invoices_salespersons_ID`)
    REFERENCES `mydb`.`invoices` (`ID` , `customers_ID` , `salespersons_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`availability`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`availability` (
  `cars_ID` INT NOT NULL,
  `store_ID` INT NOT NULL,
  `availability` TINYINT NOT NULL,
  PRIMARY KEY (`cars_ID`, `store_ID`),
  INDEX `fk_cars_has_store_store1_idx` (`store_ID` ASC) VISIBLE,
  INDEX `fk_cars_has_store_cars1_idx` (`cars_ID` ASC) VISIBLE,
  CONSTRAINT `fk_cars_has_store_cars1`
    FOREIGN KEY (`cars_ID`)
    REFERENCES `mydb`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_has_store_store1`
    FOREIGN KEY (`store_ID`)
    REFERENCES `mydb`.`store` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
