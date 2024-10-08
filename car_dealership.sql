-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_dealership` DEFAULT CHARACTER SET utf8 ;
USE `car_dealership` ;

-- -----------------------------------------------------
-- Table `car_dealership`.`stores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`stores` (
  `store_id` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NOT NULL,
  `house_num` INT NOT NULL,
  `zip_code` INT NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE INDEX `store_id_UNIQUE` (`store_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`salesperson` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `stores_store_id` INT NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE INDEX `staff_id_UNIQUE` (`staff_id` ASC) VISIBLE,
  INDEX `fk_salesperson_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_salesperson_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `car_dealership`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`invoices` (
  `invoice_num` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `customers_customer_id` INT NOT NULL,
  `salesperson_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_num`),
  UNIQUE INDEX `invoice_num_UNIQUE` (`invoice_num` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `car_dealership`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_staff_id`)
    REFERENCES `car_dealership`.`salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`sales` (
  `order_num` INT NOT NULL AUTO_INCREMENT,
  `invoices_invoice_num` INT NOT NULL,
  `salesperson_staff_id` INT NOT NULL,
  `stores_store_id` INT NOT NULL,
  `customers_customer_id` INT NOT NULL,
  PRIMARY KEY (`order_num`),
  UNIQUE INDEX `order_num_UNIQUE` (`order_num` ASC) VISIBLE,
  INDEX `fk_sales_invoices_idx` (`invoices_invoice_num` ASC) VISIBLE,
  INDEX `fk_sales_salesperson1_idx` (`salesperson_staff_id` ASC) VISIBLE,
  INDEX `fk_sales_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  INDEX `fk_sales_customers1_idx` (`customers_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_sales_invoices`
    FOREIGN KEY (`invoices_invoice_num`)
    REFERENCES `car_dealership`.`invoices` (`invoice_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_salesperson1`
    FOREIGN KEY (`salesperson_staff_id`)
    REFERENCES `car_dealership`.`salesperson` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `car_dealership`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_customers1`
    FOREIGN KEY (`customers_customer_id`)
    REFERENCES `car_dealership`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `car_dealership`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_dealership`.`cars` (
  `VIN` VARCHAR(17) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `year` DATETIME NOT NULL,
  `stores_store_id` INT NOT NULL,
  `sales_order_num` INT NOT NULL,
  `invoices_invoice_num` INT NOT NULL,
  `car_id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`car_id`),
  UNIQUE INDEX `idcars_UNIQUE` (`VIN` ASC) VISIBLE,
  INDEX `fk_cars_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  INDEX `fk_cars_sales1_idx` (`sales_order_num` ASC) VISIBLE,
  INDEX `fk_cars_invoices1_idx` (`invoices_invoice_num` ASC) VISIBLE,
  UNIQUE INDEX `car_id_UNIQUE` (`car_id` ASC) VISIBLE,
  CONSTRAINT `fk_cars_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `car_dealership`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_sales1`
    FOREIGN KEY (`sales_order_num`)
    REFERENCES `car_dealership`.`sales` (`order_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_invoices1`
    FOREIGN KEY (`invoices_invoice_num`)
    REFERENCES `car_dealership`.`invoices` (`invoice_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
