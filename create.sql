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
-- Table `mydb`.`sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_person` (
  `staff_ID` INT NOT NULL AUTO_INCREMENT,
  `sales_personcol` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff_ID`),
  UNIQUE INDEX `staff_ID_UNIQUE` (`staff_ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoice` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `sales_person_staff_ID` INT NOT NULL,
  PRIMARY KEY (`invoice_number`, `sales_person_staff_ID`),
  UNIQUE INDEX `invoice_id_UNIQUE` (`invoice_number` ASC) VISIBLE,
  INDEX `fk_Invoice_sales_person1_idx` (`sales_person_staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_sales_person1`
    FOREIGN KEY (`sales_person_staff_ID`)
    REFERENCES `mydb`.`sales_person` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `customer_ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `phone_number` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `postal_code` INT NOT NULL,
  `Invoice_invoice_number` INT NOT NULL,
  `Invoice_sales_person_staff_ID` INT NOT NULL,
  `sales_person_staff_ID` INT NOT NULL,
  PRIMARY KEY (`customer_ID`, `Invoice_invoice_number`, `Invoice_sales_person_staff_ID`, `sales_person_staff_ID`),
  UNIQUE INDEX `customer_ID_UNIQUE` (`customer_ID` ASC) VISIBLE,
  INDEX `fk_customers_Invoice1_idx` (`Invoice_invoice_number` ASC, `Invoice_sales_person_staff_ID` ASC) VISIBLE,
  INDEX `fk_customers_sales_person1_idx` (`sales_person_staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_customers_Invoice1`
    FOREIGN KEY (`Invoice_invoice_number` , `Invoice_sales_person_staff_ID`)
    REFERENCES `mydb`.`Invoice` (`invoice_number` , `sales_person_staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_sales_person1`
    FOREIGN KEY (`sales_person_staff_ID`)
    REFERENCES `mydb`.`sales_person` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `id_number` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `customers_customer_ID` INT NOT NULL,
  `sales_person_staff_ID` INT NOT NULL,
  `Invoice_invoice_number` INT NOT NULL,
  `Invoice_sales_person_staff_ID` INT NOT NULL,
  PRIMARY KEY (`id_number`, `customers_customer_ID`, `sales_person_staff_ID`, `Invoice_invoice_number`, `Invoice_sales_person_staff_ID`),
  UNIQUE INDEX `id_number_UNIQUE` (`id_number` ASC) VISIBLE,
  INDEX `fk_cars_customers_idx` (`customers_customer_ID` ASC) VISIBLE,
  INDEX `fk_cars_sales_person1_idx` (`sales_person_staff_ID` ASC) VISIBLE,
  INDEX `fk_cars_Invoice1_idx` (`Invoice_invoice_number` ASC, `Invoice_sales_person_staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_cars_customers`
    FOREIGN KEY (`customers_customer_ID`)
    REFERENCES `mydb`.`customers` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_sales_person1`
    FOREIGN KEY (`sales_person_staff_ID`)
    REFERENCES `mydb`.`sales_person` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_Invoice1`
    FOREIGN KEY (`Invoice_invoice_number` , `Invoice_sales_person_staff_ID`)
    REFERENCES `mydb`.`Invoice` (`invoice_number` , `sales_person_staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sales_person_has_customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_person_has_customers` (
  `sales_person_staff_ID` INT NOT NULL,
  `customers_customer_ID` INT NOT NULL,
  PRIMARY KEY (`sales_person_staff_ID`, `customers_customer_ID`),
  INDEX `fk_sales_person_has_customers_customers1_idx` (`customers_customer_ID` ASC) VISIBLE,
  INDEX `fk_sales_person_has_customers_sales_person1_idx` (`sales_person_staff_ID` ASC) VISIBLE,
  CONSTRAINT `fk_sales_person_has_customers_sales_person1`
    FOREIGN KEY (`sales_person_staff_ID`)
    REFERENCES `mydb`.`sales_person` (`staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_person_has_customers_customers1`
    FOREIGN KEY (`customers_customer_ID`)
    REFERENCES `mydb`.`customers` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
