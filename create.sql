-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema example
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema example
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `example`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(50) NULL,
  `model` CHAR(12) NULL,
  `year` VARCHAR(40) NOT NULL,
  `color` VARCHAR(20) NULL DEFAULT NULL,
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `example`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`customers` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `email` VARCHAR(100) NULL,
  `address` VARCHAR(200) NULL,
  `city` VARCHAR(50) NULL,
  `state_province` VARCHAR(50) NULL,
  `country` VARCHAR(50) NULL,
  `zip_code` VARCHAR(20) NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `example`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`salespersons` (
  `staff_id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `store_id` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `example`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `example`.`invoices` (
  `invoice_id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `VIN` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  INDEX `customer_id_idx` (`customer_id` ASC) VISIBLE,
  INDEX `staff_id_idx` (`staff_id` ASC) VISIBLE,
  INDEX `VIN_idx` (`VIN` ASC) VISIBLE,
  UNIQUE INDEX `invoice_id_UNIQUE` (`invoice_id` ASC) VISIBLE,
  CONSTRAINT `staff_id`
    FOREIGN KEY (`staff_id`)
    REFERENCES `example`.`salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `example`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `VIN`
    FOREIGN KEY (`VIN`)
    REFERENCES `example`.`cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
