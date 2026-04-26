-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(50) NOT NULL,
  `manufacturer` VARCHAR(50) NOT NULL,
  `model` VARCHAR(50) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cust_id` INT NOT NULL,
  `cust_name` VARCHAR(100) NOT NULL,
  `cust_phone` VARCHAR(30) NULL DEFAULT NULL,
  `cust_email` VARCHAR(100) NULL DEFAULT NULL,
  `cust_address` VARCHAR(150) NULL DEFAULT NULL,
  `cust_city` VARCHAR(50) NULL DEFAULT NULL,
  `cust_state` VARCHAR(50) NULL DEFAULT NULL,
  `cust_country` VARCHAR(50) NULL DEFAULT NULL,
  `cust_zipcode` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`salespersons` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `store` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` INT NOT NULL,
  `date` DATE NOT NULL,
  `car_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `salesperson_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `car_id` (`car_id` ASC) VISIBLE,
  INDEX `customer_id` (`customer_id` ASC) VISIBLE,
  INDEX `salesperson_id` (`salesperson_id` ASC) VISIBLE,
  CONSTRAINT `invoices_ibfk_1`
    FOREIGN KEY (`car_id`)
    REFERENCES `lab_mysql`.`cars` (`id`),
  CONSTRAINT `invoices_ibfk_2`
    FOREIGN KEY (`customer_id`)
    REFERENCES `lab_mysql`.`customers` (`id`),
  CONSTRAINT `invoices_ibfk_3`
    FOREIGN KEY (`salesperson_id`)
    REFERENCES `lab_mysql`.`salespersons` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
