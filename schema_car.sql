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
-- Table `mydb`.`car_models`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car_models` (
  `card_model_id` INT UNSIGNED NOT NULL,
  `car_model_name` VARCHAR(45) NULL,
  `carmodel_windows` INT NULL,
  `car_model_wheels` INT NULL,
  PRIMARY KEY (`card_model_id`),
  UNIQUE INDEX `card_model_id_UNIQUE` (`card_model_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car` (
  `car_id` INT UNSIGNED NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` INT NOT NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  `car_models_card_model_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE INDEX `car_id_UNIQUE` (`car_id` ASC) VISIBLE,
  INDEX `fk_car_car_models1_idx` (`car_models_card_model_id` ASC) VISIBLE,
  CONSTRAINT `fk_car_car_models1`
    FOREIGN KEY (`car_models_card_model_id`)
    REFERENCES `mydb`.`car_models` (`card_model_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone` INT NULL,
  `email_address` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_code` INT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `staff_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `salesperson_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` DATE NULL,
  `car_id` INT NULL,
  `customer_id` INT NULL,
  `salesperson_id` INT NULL,
  `gross_amount` DECIMAL(2) NULL,
  `net_amount` DECIMAL(2) NULL,
  `car_car_id` INT UNSIGNED NOT NULL,
  `customers_customer_id` INT UNSIGNED NOT NULL,
  `salespersons_staff_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`invoice_no`),
  UNIQUE INDEX `invoice_no_UNIQUE` (`invoice_no` ASC) VISIBLE,
  INDEX `fk_invoices_car1_idx` (`car_car_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_car1`
    FOREIGN KEY (`car_car_id`)
    REFERENCES `mydb`.`car` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_staff_id`)
    REFERENCES `mydb`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
