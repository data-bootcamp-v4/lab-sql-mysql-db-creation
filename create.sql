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
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `idcustomers` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `county` VARCHAR(45) NOT NULL,
  `zip` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salesperson` (
  `idsalespersons` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `car_VIN` INT NOT NULL,
  PRIMARY KEY (`idsalespersons`, `car_VIN`),
  INDEX `fk_salesperson_car1_idx` (`car_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_salesperson_car1`
    FOREIGN KEY (`car_VIN`)
    REFERENCES `mydb`.`car` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoice` (
  `invoice number` INT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salesperson` VARCHAR(45) NOT NULL,
  `customer_idcustomers` INT NOT NULL,
  `salesperson_idsalespersons` INT NOT NULL,
  PRIMARY KEY (`invoice number`, `customer_idcustomers`, `salesperson_idsalespersons`),
  INDEX `fk_invoice_customer1_idx` (`customer_idcustomers` ASC) VISIBLE,
  INDEX `fk_invoice_salesperson1_idx` (`salesperson_idsalespersons` ASC) VISIBLE,
  CONSTRAINT `fk_invoice_customer1`
    FOREIGN KEY (`customer_idcustomers`)
    REFERENCES `mydb`.`customer` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoice_salesperson1`
    FOREIGN KEY (`salesperson_idsalespersons`)
    REFERENCES `mydb`.`salesperson` (`idsalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car` (
  `VIN` INT NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `customer_idcustomers` INT NOT NULL,
  `invoice_invoice number` INT NOT NULL,
  `invoice_customer_idcustomers` INT NOT NULL,
  `invoice_salesperson_idsalespersons` INT NOT NULL,
  PRIMARY KEY (`VIN`, `customer_idcustomers`, `invoice_invoice number`, `invoice_customer_idcustomers`, `invoice_salesperson_idsalespersons`),
  INDEX `fk_car_customer1_idx` (`customer_idcustomers` ASC) VISIBLE,
  INDEX `fk_car_invoice1_idx` (`invoice_invoice number` ASC, `invoice_customer_idcustomers` ASC, `invoice_salesperson_idsalespersons` ASC) VISIBLE,
  CONSTRAINT `fk_car_customer1`
    FOREIGN KEY (`customer_idcustomers`)
    REFERENCES `mydb`.`customer` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_invoice1`
    FOREIGN KEY (`invoice_invoice number` , `invoice_customer_idcustomers` , `invoice_salesperson_idsalespersons`)
    REFERENCES `mydb`.`invoice` (`invoice number` , `customer_idcustomers` , `salesperson_idsalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer_has_salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer_has_salesperson` (
  `customer_idcustomers` INT NOT NULL,
  `salesperson_idsalespersons` INT NOT NULL,
  PRIMARY KEY (`customer_idcustomers`, `salesperson_idsalespersons`),
  INDEX `fk_customer_has_salesperson_salesperson1_idx` (`salesperson_idsalespersons` ASC) VISIBLE,
  INDEX `fk_customer_has_salesperson_customer_idx` (`customer_idcustomers` ASC) VISIBLE,
  CONSTRAINT `fk_customer_has_salesperson_customer`
    FOREIGN KEY (`customer_idcustomers`)
    REFERENCES `mydb`.`customer` (`idcustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_has_salesperson_salesperson1`
    FOREIGN KEY (`salesperson_idsalespersons`)
    REFERENCES `mydb`.`salesperson` (`idsalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
