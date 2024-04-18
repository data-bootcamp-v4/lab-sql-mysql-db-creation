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
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `car_id_number` INT NOT NULL AUTO_INCREMENT,
  `car_model` VARCHAR(45) NOT NULL,
  `car_manufacturer` VARCHAR(45) NOT NULL,
  `car_colour` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_id_number`),
  UNIQUE INDEX `car_identification_number_UNIQUE` (`car_id_number` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` INT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `cars_car_id_number` INT NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE,
  INDEX `fk_customer_cars1_idx` (`cars_car_id_number` ASC) VISIBLE,
  CONSTRAINT `fk_customer_cars1`
    FOREIGN KEY (`cars_car_id_number`)
    REFERENCES `mydb`.`cars` (`car_id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_person` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `store_location` VARCHAR(45) NOT NULL,
  `customer_customer_id` INT NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  INDEX `fk_sales_person_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_sales_person_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `date` INT NOT NULL,
  `customer_customer_id` INT NOT NULL,
  `cars_car_id_number` INT NOT NULL,
  `sales_person_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE INDEX `invoice_id_UNIQUE` (`invoice_id` ASC) VISIBLE,
  INDEX `fk_invoices_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_car_id_number` ASC) VISIBLE,
  INDEX `fk_invoices_sales_person1_idx` (`sales_person_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_car_id_number`)
    REFERENCES `mydb`.`cars` (`car_id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_sales_person1`
    FOREIGN KEY (`sales_person_staff_id`)
    REFERENCES `mydb`.`sales_person` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
