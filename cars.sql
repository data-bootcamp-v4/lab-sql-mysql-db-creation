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
-- Table `mydb`.`stores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stores` (
  `store_id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(100) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `zip/postal` INT NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE INDEX `store_id_UNIQUE` (`store_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_person` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NULL,
  `stores_store_id` INT NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  INDEX `fk_sales_person_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_sales_person_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `mydb`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` VARCHAR(45) NOT NULL,
  `sales_person_staff_id` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `stores_store_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`),
  UNIQUE INDEX `invoice_number_UNIQUE` (`invoice_number` ASC) VISIBLE,
  INDEX `fk_invoices_sales_person1_idx` (`sales_person_staff_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_sales_person1`
    FOREIGN KEY (`sales_person_staff_id`)
    REFERENCES `mydb`.`sales_person` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `mydb`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `invoices_invoice_number` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `sales_person_staff_id` INT NOT NULL,
  `stores_store_id` INT NOT NULL,
  PRIMARY KEY (`VIN`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  INDEX `fk_cars_invoices_idx` (`invoices_invoice_number` ASC) VISIBLE,
  INDEX `fk_cars_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_cars_sales_person1_idx` (`sales_person_staff_id` ASC) VISIBLE,
  INDEX `fk_cars_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_cars_invoices`
    FOREIGN KEY (`invoices_invoice_number`)
    REFERENCES `mydb`.`invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_sales_person1`
    FOREIGN KEY (`sales_person_staff_id`)
    REFERENCES `mydb`.`sales_person` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `mydb`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers_has_sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers_has_sales_person` (
  `customers_customer_id` INT NOT NULL,
  `sales_person_staff_id` INT NOT NULL,
  PRIMARY KEY (`customers_customer_id`, `sales_person_staff_id`),
  INDEX `fk_customers_has_sales_person_sales_person1_idx` (`sales_person_staff_id` ASC) VISIBLE,
  INDEX `fk_customers_has_sales_person_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_has_sales_person_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_sales_person_sales_person1`
    FOREIGN KEY (`sales_person_staff_id`)
    REFERENCES `mydb`.`sales_person` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers_has_stores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers_has_stores` (
  `customers_customer_id` INT NOT NULL,
  `stores_store_id` INT NOT NULL,
  PRIMARY KEY (`customers_customer_id`, `stores_store_id`),
  INDEX `fk_customers_has_stores_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  INDEX `fk_customers_has_stores_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_has_stores_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `mydb`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_stores_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `mydb`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
