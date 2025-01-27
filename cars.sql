-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`salesperson` (
  `staff_auto` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  UNIQUE INDEX `salesperson_auto_UNIQUE` (`staff_auto` ASC) VISIBLE,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`customers` (
  `customer_auto` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state_province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_postalcode` INT UNSIGNED NOT NULL,
  `salesperson_staff_id` INT UNSIGNED NOT NULL,
  UNIQUE INDEX `customer_auto_UNIQUE` (`customer_auto` ASC) VISIBLE,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE,
  INDEX `fk_customers_salesperson1_idx` (`salesperson_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_salesperson1`
    FOREIGN KEY (`salesperson_staff_id`)
    REFERENCES `cars`.`salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`invoices` (
  `invoices_auto` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoices_id` INT UNSIGNED NOT NULL,
  `date` DATE NOT NULL,
  `customers_customer_id` INT UNSIGNED NOT NULL,
  UNIQUE INDEX `car_sale_cust_auto_UNIQUE` (`invoices_auto` ASC) VISIBLE,
  PRIMARY KEY (`invoices_id`),
  UNIQUE INDEX `car_sale_cust_id_UNIQUE` (`invoices_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `cars`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`cars` (
  `cars_auto` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  `salesperson_staff_id` INT UNSIGNED NOT NULL,
  `invoices_invoices_id` INT UNSIGNED NOT NULL,
  UNIQUE INDEX `cars_auto_UNIQUE` (`cars_auto` ASC) VISIBLE,
  PRIMARY KEY (`VIN`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  INDEX `fk_cars_salesperson1_idx` (`salesperson_staff_id` ASC) VISIBLE,
  INDEX `fk_cars_invoices1_idx` (`invoices_invoices_id` ASC) VISIBLE,
  CONSTRAINT `fk_cars_salesperson1`
    FOREIGN KEY (`salesperson_staff_id`)
    REFERENCES `cars`.`salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_invoices_id`)
    REFERENCES `cars`.`invoices` (`invoices_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
