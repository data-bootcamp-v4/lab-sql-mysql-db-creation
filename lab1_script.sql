-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema first_schema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema first_schema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `first_schema` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema car_dealershop_lab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealershop_lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealershop_lab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `first_schema` ;

-- -----------------------------------------------------
-- Table `first_schema`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `first_schema`.`courses` (
  `c_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  `duration` INT UNSIGNED NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE INDEX `c_id_UNIQUE` (`c_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `first_schema`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `first_schema`.`students` (
  `st_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `dob` VARCHAR(45) NULL,
  `age` INT NULL,
  PRIMARY KEY (`st_id`),
  UNIQUE INDEX `st_id_UNIQUE` (`st_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `first_schema`.`enrollments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `first_schema`.`enrollments` (
  `students_st_id` INT NOT NULL,
  `courses_c_id` INT NOT NULL,
  `grade_decimal` VARCHAR(45) NULL,
  `attendance INT` VARCHAR(45) NULL,
  PRIMARY KEY (`students_st_id`, `courses_c_id`),
  INDEX `fk_students_has_courses_courses1_idx` (`courses_c_id` ASC) VISIBLE,
  INDEX `fk_students_has_courses_students1_idx` (`students_st_id` ASC) VISIBLE,
  CONSTRAINT `fk_students_has_courses_students1`
    FOREIGN KEY (`students_st_id`)
    REFERENCES `first_schema`.`students` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_students_has_courses_courses1`
    FOREIGN KEY (`courses_c_id`)
    REFERENCES `first_schema`.`courses` (`c_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `car_dealershop_lab` ;

-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`Customers` (
  `cust_id` INT NOT NULL,
  `cust_name` VARCHAR(45) NULL,
  `phone_number` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state_province` VARCHAR(45) NULL,
  `zip_postal_code` VARCHAR(45) NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE INDEX `phone_number_UNIQUE` (`phone_number` ASC) VISIBLE,
  UNIQUE INDEX `cust_id_UNIQUE` (`cust_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`Invoices` (
  `invoice_id` INT NOT NULL,
  `date` DATETIME(8) NULL,
  `Customers_cust_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE INDEX `invoice_id_UNIQUE` (`invoice_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_cust_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_cust_id`)
    REFERENCES `car_dealershop_lab`.`Customers` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`Cars` (
  `cars_id` INT NOT NULL,
  `VIN_vehicle_identification_number)` INT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  `Invoices_invoice_id` INT NOT NULL,
  PRIMARY KEY (`cars_id`),
  UNIQUE INDEX `id_UNIQUE` (`cars_id` ASC) VISIBLE,
  UNIQUE INDEX `VIN (vehicle identification number)_UNIQUE` (`VIN_vehicle_identification_number)` ASC) VISIBLE,
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_invoice_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_invoice_id`)
    REFERENCES `car_dealershop_lab`.`Invoices` (`invoice_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`Salespersons` (
  `staff_id` INT NOT NULL,
  `staff_name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  `Invoices_invoice_id` INT NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  INDEX `fk_Salespersons_Invoices1_idx` (`Invoices_invoice_id` ASC) VISIBLE,
  CONSTRAINT `fk_Salespersons_Invoices1`
    FOREIGN KEY (`Invoices_invoice_id`)
    REFERENCES `car_dealershop_lab`.`Invoices` (`invoice_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealershop_lab`.`Customers_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealershop_lab`.`Customers_has_Salespersons` (
  `Customers_cust_id` INT NOT NULL,
  `Salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`Customers_cust_id`, `Salespersons_staff_id`),
  INDEX `fk_Customers_has_Salespersons_Salespersons1_idx` (`Salespersons_staff_id` ASC) VISIBLE,
  INDEX `fk_Customers_has_Salespersons_Customers1_idx` (`Customers_cust_id` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_has_Salespersons_Customers1`
    FOREIGN KEY (`Customers_cust_id`)
    REFERENCES `car_dealershop_lab`.`Customers` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customers_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_staff_id`)
    REFERENCES `car_dealershop_lab`.`Salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
