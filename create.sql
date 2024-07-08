-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema car_delearship
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_delearship
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_delearship` DEFAULT CHARACTER SET utf8 ;
USE `car_delearship` ;

-- -----------------------------------------------------
-- Table `car_delearship`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_delearship`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip` INT NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_delearship`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_delearship`.`salesperson` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_delearship`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_delearship`.`invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `VIN_id_car` VARCHAR(45) NULL,
  `customers_customer_id` INT NOT NULL,
  `salesperson_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `customers_customer_id`, `salesperson_staff_id`),
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_staff_id` ASC) VISIBLE,
  UNIQUE INDEX `invoice_number_UNIQUE` (`invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `car_delearship`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_staff_id`)
    REFERENCES `car_delearship`.`salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_delearship`.`cars_inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_delearship`.`cars_inventory` (
  `VIN_id_car` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `salesperson_staff_id` INT NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  PRIMARY KEY (`VIN_id_car`, `customers_customer_id`, `salesperson_staff_id`, `invoices_invoice_number`),
  INDEX `fk_cars_inventory_customers_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_cars_inventory_salesperson1_idx` (`salesperson_staff_id` ASC) VISIBLE,
  INDEX `fk_cars_inventory_invoices1_idx` (`invoices_invoice_number` ASC) VISIBLE,
  UNIQUE INDEX `VIN_id_car_UNIQUE` (`VIN_id_car` ASC) VISIBLE,
  CONSTRAINT `fk_cars_inventory_customers`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `car_delearship`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_inventory_salesperson1`
    FOREIGN KEY (`salesperson_staff_id`)
    REFERENCES `car_delearship`.`salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_inventory_invoices1`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `car_delearship`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_delearship`.`enrollement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_delearship`.`enrollement` (
  `salesperson_staff_id` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  PRIMARY KEY (`salesperson_staff_id`, `customers_customer_id`),
  INDEX `fk_salesperson_has_customers_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_salesperson_has_customers_salesperson1_idx` (`salesperson_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_salesperson_has_customers_salesperson1`
    FOREIGN KEY (`salesperson_staff_id`)
    REFERENCES `car_delearship`.`salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_salesperson_has_customers_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `car_delearship`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
