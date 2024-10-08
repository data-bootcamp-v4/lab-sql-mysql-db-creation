-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealership` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `car_dealership` ;

-- -----------------------------------------------------
-- Table `car_dealership`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`salespersons` (
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`customers` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_code` INT NULL,
  `salespersons_staff_id` INT NOT NULL,
  `salespersons_staff_id1` INT NOT NULL,
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE,
  PRIMARY KEY (`customer_id`, `salespersons_staff_id`, `salespersons_staff_id1`),
  INDEX `fk_customers_salespersons1_idx` (`salespersons_staff_id1` ASC) VISIBLE,
  CONSTRAINT `fk_customers_salespersons1`
    FOREIGN KEY (`salespersons_staff_id1`)
    REFERENCES `car_dealership`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`invoices` (
  `invoice_number` INT NOT NULL,
  `date` VARCHAR(45) NULL,
  `car` VARCHAR(45) NULL,
  `customer` VARCHAR(45) NULL,
  `salesperson_car` VARCHAR(45) NULL,
  `salespersons_staff_id` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `customers_salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `salespersons_staff_id`, `customers_customer_id`, `customers_salespersons_staff_id`),
  UNIQUE INDEX `invoice_number_UNIQUE` (`invoice_number` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_staff_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC, `customers_salespersons_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_staff_id`)
    REFERENCES `car_dealership`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id` , `customers_salespersons_staff_id`)
    REFERENCES `car_dealership`.`customers` (`customer_id` , `salespersons_staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`cars` (
  `vin` INT NOT NULL,
  `manufactur` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` INT NULL,
  `color` VARCHAR(45) NULL,
  `salespersons_staff_id` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  PRIMARY KEY (`vin`, `salespersons_staff_id`, `customers_customer_id`, `invoices_invoice_number`),
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE,
  INDEX `fk_cars_salespersons1_idx` (`salespersons_staff_id` ASC) VISIBLE,
  INDEX `fk_cars_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_cars_invoices1_idx` (`invoices_invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_cars_salespersons1`
    FOREIGN KEY (`salespersons_staff_id`)
    REFERENCES `car_dealership`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `car_dealership`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `car_dealership`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
