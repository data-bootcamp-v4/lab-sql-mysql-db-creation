-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema car_dealershop_lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealershop_lab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `car_dealershop_lab` ;

-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `car_dealershop_lab`.`cars`;
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `car_id` INT NOT NULL,
  `vin` VARCHAR(20) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE INDEX `cars_id_UNIQUE` (`car_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`stores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `car_dealershop_lab`.`stores`;
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`stores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `store_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL,
  `zip/postal code` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `owner` VARCHAR(45) NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE INDEX `store_id_UNIQUE` (`store_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`salespersons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `car_dealershop_lab`.`salespersons`;
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`salespersons` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `fk_store_id` INT NOT NULL,
  PRIMARY KEY (`staff_id`, `fk_store_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_salespersons_stores1_idx` (`fk_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_stores1`
    FOREIGN KEY (`fk_store_id`)
    REFERENCES `car_dealershop_lab`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `car_dealershop_lab`.`customers`;
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `dob` DATE NOT NULL,
  `phone` VARCHAR(15) NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `zip/postal code` VARCHAR(15) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`invoices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `car_dealershop_lab`.`invoices`;
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`invoices` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `fk_customer_id` INT NOT NULL,
  `fk_car_id` INT NOT NULL,
  `fk_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `fk_customer_id`, `fk_car_id`, `fk_staff_id`),
  UNIQUE INDEX `invoice_number_UNIQUE` (`invoice_number` ASC) VISIBLE,
  INDEX `fk_invoices_customers_idx` (`fk_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`fk_car_id` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`fk_staff_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers`
    FOREIGN KEY (`fk_customer_id`)
    REFERENCES `car_dealershop_lab`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`fk_car_id`)
    REFERENCES `car_dealershop_lab`.`cars` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`fk_staff_id`)
    REFERENCES `car_dealershop_lab`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
