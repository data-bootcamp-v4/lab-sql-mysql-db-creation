-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_database` DEFAULT CHARACTER SET utf8mb3 ;
USE `car_database` ;

-- -----------------------------------------------------
-- Table `car_database`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_database`.`customers` (
  `auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NULL DEFAULT NULL,
  `customer ID` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`auto_increment_id`, `customer ID`),
  UNIQUE INDEX `idcustomer_UNIQUE` (`auto_increment_id` ASC) VISIBLE,
  UNIQUE INDEX `auto_increment_id_UNIQUE` (`customer ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_database`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_database`.`salespersons` (
  `auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `store` VARCHAR(45) NOT NULL,
  `staff_id` INT NOT NULL,
  PRIMARY KEY (`auto_increment_id`, `staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`auto_increment_id` ASC) VISIBLE,
  UNIQUE INDEX `auto_increment_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_database`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_database`.`invoices` (
  `auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NULL DEFAULT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `invoice_number` INT NOT NULL,
  `salespersons_auto_increment_id` INT NOT NULL,
  `salespersons_staff_id` INT NOT NULL,
  `customers_auto_increment_id` INT NOT NULL,
  `customers_customer ID` INT NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `salesperson` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`auto_increment_id`, `invoice_number`, `customers_auto_increment_id`, `customers_customer ID`),
  UNIQUE INDEX `invoice_number_UNIQUE` (`auto_increment_id` ASC) VISIBLE,
  UNIQUE INDEX `auto_increment_id_UNIQUE` (`invoice_number` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_auto_increment_id` ASC, `salespersons_staff_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_auto_increment_id` ASC, `customers_customer ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_auto_increment_id` , `customers_customer ID`)
    REFERENCES `car_database`.`customers` (`auto_increment_id` , `customer ID`),
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_auto_increment_id` , `salespersons_staff_id`)
    REFERENCES `car_database`.`salespersons` (`auto_increment_id` , `staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_database`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_database`.`car` (
  `auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `Model` VARCHAR(45) NOT NULL,
  `Colour` VARCHAR(45) NOT NULL,
  `VIN` INT NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  `invoices_auto_increment_id` INT NOT NULL,
  `salespersons_auto_increment_id` INT NOT NULL,
  `salespersons_staff_id` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  PRIMARY KEY (`auto_increment_id`, `VIN`),
  UNIQUE INDEX `VIN_UNIQUE` (`auto_increment_id` ASC) VISIBLE,
  UNIQUE INDEX `Model_UNIQUE` (`Model` ASC) VISIBLE,
  UNIQUE INDEX `auto_increment_id_UNIQUE` (`VIN` ASC) VISIBLE,
  INDEX `fk_car_invoices1_idx` (`invoices_invoice_number` ASC, `invoices_auto_increment_id` ASC) VISIBLE,
  INDEX `fk_car_salespersons1_idx` (`salespersons_auto_increment_id` ASC, `salespersons_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_car_invoices1`
    FOREIGN KEY (`invoices_invoice_number` , `invoices_auto_increment_id`)
    REFERENCES `car_database`.`invoices` (`auto_increment_id` , `invoice_number`),
  CONSTRAINT `fk_car_salespersons1`
    FOREIGN KEY (`salespersons_auto_increment_id` , `salespersons_staff_id`)
    REFERENCES `car_database`.`salespersons` (`auto_increment_id` , `staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `car_database`.`salespersons_has_customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_database`.`salespersons_has_customers` (
  `salespersons_auto_increment_id` INT NOT NULL,
  `salespersons_staff_id` INT NOT NULL,
  `customers_auto_increment_id` INT NOT NULL,
  `customers_customer ID` INT NOT NULL,
  PRIMARY KEY (`salespersons_auto_increment_id`, `salespersons_staff_id`),
  INDEX `fk_salespersons_has_customers_customers1_idx` (`customers_auto_increment_id` ASC, `customers_customer ID` ASC) VISIBLE,
  INDEX `fk_salespersons_has_customers_salespersons1_idx` (`salespersons_auto_increment_id` ASC, `salespersons_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_has_customers_customers1`
    FOREIGN KEY (`customers_auto_increment_id` , `customers_customer ID`)
    REFERENCES `car_database`.`customers` (`auto_increment_id` , `customer ID`),
  CONSTRAINT `fk_salespersons_has_customers_salespersons1`
    FOREIGN KEY (`salespersons_auto_increment_id` , `salespersons_staff_id`)
    REFERENCES `car_database`.`salespersons` (`auto_increment_id` , `staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
