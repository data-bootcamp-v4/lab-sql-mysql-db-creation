-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car_dealershop_lab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealershop_lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealershop_lab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `car_dealershop_lab` ;

-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`customers` (
  `id_cus` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `phone_number` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip/postal_code` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cus`),
  UNIQUE INDEX `id_cus_UNIQUE` (`id_cus` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`salespersons` (
  `id_staff` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  PRIMARY KEY (`id_staff`),
  UNIQUE INDEX `id_staff_UNIQUE` (`id_staff` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`invoices` (
  `id_in_number` INT NOT NULL,
  `date` DATE NULL,
  `salespersons_id_staff` INT NOT NULL,
  `customers_id_cus` INT NOT NULL,
  `car_id` INT NULL,
  PRIMARY KEY (`id_in_number`),
  UNIQUE INDEX `id_in_number_UNIQUE` (`id_in_number` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_id_staff` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_id_cus` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_id_staff`)
    REFERENCES `car_dealershop_lab`.`salespersons` (`id_staff`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_id_cus`)
    REFERENCES `car_dealershop_lab`.`customers` (`id_cus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vin` INT NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  `invoices_id_in_number` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_vin_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_cars_invoices1_idx` (`invoices_id_in_number` ASC) VISIBLE,
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE,
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_id_in_number`)
    REFERENCES `car_dealershop_lab`.`invoices` (`id_in_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
