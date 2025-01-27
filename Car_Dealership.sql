-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LJMU
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LJMU
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LJMU` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema Car Dealership Lab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Car Dealership Lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Car Dealership Lab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `LJMU` ;

-- -----------------------------------------------------
-- Table `LJMU`.`Students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LJMU`.`Students` (
  `St_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `dob` VARCHAR(45) NOT NULL,
  `age` INT NULL,
  PRIMARY KEY (`St_id`),
  UNIQUE INDEX `St_id_UNIQUE` (`St_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LJMU`.`Courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LJMU`.`Courses` (
  `Course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  `duration` INT NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`Course_id`),
  UNIQUE INDEX `Course_id_UNIQUE` (`Course_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LJMU`.`Students_has_Courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LJMU`.`Students_has_Courses` (
  `Students_St_id` INT NOT NULL,
  `Courses_Course_id` INT NOT NULL,
  `grade` DECIMAL NULL,
  `attendance` INT NULL,
  PRIMARY KEY (`Students_St_id`, `Courses_Course_id`),
  INDEX `fk_Students_has_Courses_Courses1_idx` (`Courses_Course_id` ASC) VISIBLE,
  INDEX `fk_Students_has_Courses_Students_idx` (`Students_St_id` ASC) VISIBLE,
  CONSTRAINT `fk_Students_has_Courses_Students`
    FOREIGN KEY (`Students_St_id`)
    REFERENCES `LJMU`.`Students` (`St_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Students_has_Courses_Courses1`
    FOREIGN KEY (`Courses_Course_id`)
    REFERENCES `LJMU`.`Courses` (`Course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `Car Dealership Lab` ;

-- -----------------------------------------------------
-- Table `Car Dealership Lab`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car Dealership Lab`.`Customers` (
  `cus_id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(45) NOT NULL,
  `phone_number` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `post_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cus_id`),
  UNIQUE INDEX `cus_id_UNIQUE` (`cus_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Car Dealership Lab`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car Dealership Lab`.`Salesperson` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `sp_id_UNIQUE` (`staff_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Car Dealership Lab`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car Dealership Lab`.`Invoices` (
  `Invoice_id` INT NOT NULL,
  `date` DATE NOT NULL,
  `Customers_cus_id` INT NOT NULL,
  `Salesperson_staff_id` INT NOT NULL,
  PRIMARY KEY (`Invoice_id`, `Customers_cus_id`, `Salesperson_staff_id`),
  INDEX `fk_Invoices_Customers_idx` (`Customers_cus_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`Customers_cus_id`)
    REFERENCES `Car Dealership Lab`.`Customers` (`cus_id`),
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_staff_id`)
    REFERENCES `Car Dealership Lab`.`Salesperson` (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
