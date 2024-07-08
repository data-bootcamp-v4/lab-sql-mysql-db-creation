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
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `customer_id` FLOAT NOT NULL,
  `name` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `e-mail` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip` VARCHAR(45) NULL,
  `sales_value` VARCHAR(45) NULL,
  `Customercol` VARCHAR(45) NULL,
  `Invoice_VIN` INT NULL,
  `Car_VIN` INT NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `vin_id` FLOAT NOT NULL,
  `brand` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `fuel` VARCHAR(45) NULL,
  `power` FLOAT NULL,
  `liters` FLOAT NULL,
  `optional` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `sales_value` FLOAT NULL,
  `Invoice_sales_value` FLOAT NOT NULL,
  `Customer_customer_id` FLOAT NOT NULL,
  `Salesperson_company_id` INT NOT NULL,
  PRIMARY KEY (`vin_id`, `Invoice_sales_value`),
  INDEX `fk_Cars_Customer1_idx` (`Customer_customer_id` ASC) VISIBLE,
  INDEX `fk_Cars_Salesperson1_idx` (`Salesperson_company_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Customer1`
    FOREIGN KEY (`Customer_customer_id`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Salesperson1`
    FOREIGN KEY (`Salesperson_company_id`)
    REFERENCES `mydb`.`Salesperson` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoice` (
  `sales_value` FLOAT NOT NULL,
  `company_id` INT NULL,
  `customer_name` VARCHAR(45) NULL,
  `customername` VARCHAR(45) NULL,
  `price` INT NULL,
  `address` VARCHAR(45) NULL,
  `invoice_number` INT NULL,
  `Invoicecol` VARCHAR(45) NULL,
  `date` DATE NULL,
  `vin` VARCHAR(45) NOT NULL,
  `Salesperson_sales_value` FLOAT NOT NULL,
  `Cars_vin_id` FLOAT NOT NULL,
  `Cars_Invoice_sales_value` FLOAT NOT NULL,
  `Customer_customer_id` FLOAT NOT NULL,
  PRIMARY KEY (`sales_value`, `vin`, `Customer_customer_id`),
  INDEX `fk_Invoice_Cars1_idx` (`Cars_vin_id` ASC, `Cars_Invoice_sales_value` ASC) VISIBLE,
  INDEX `fk_Invoice_Customer1_idx` (`Customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_Cars1`
    FOREIGN KEY (`Cars_vin_id` , `Cars_Invoice_sales_value`)
    REFERENCES `mydb`.`Cars` (`vin_id` , `Invoice_sales_value`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Customer1`
    FOREIGN KEY (`Customer_customer_id`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson` (
  `company_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `age` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `Invoice_sales_value` FLOAT NOT NULL,
  `Invoice_vin` VARCHAR(45) NOT NULL,
  `Invoice_Customer_customer_id` FLOAT NOT NULL,
  PRIMARY KEY (`company_id`),
  INDEX `fk_Salesperson_Invoice1_idx` (`Invoice_sales_value` ASC, `Invoice_vin` ASC, `Invoice_Customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_Invoice1`
    FOREIGN KEY (`Invoice_sales_value` , `Invoice_vin` , `Invoice_Customer_customer_id`)
    REFERENCES `mydb`.`Invoice` (`sales_value` , `vin` , `Customer_customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Cars` (
  `Salesperson_company_id` INT NOT NULL,
  `Cars_VIN` INT NULL,
  `price` FLOAT NULL,
  `Salesperson_has_Carscol` VARCHAR(45) NULL,
  `sales` INT NOT NULL AUTO_INCREMENT,
  `Salesperson_has_Carscol1` VARCHAR(45) NULL,
  INDEX `fk_Salesperson_has_Cars_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Cars_Salesperson_idx` (`Salesperson_company_id` ASC) VISIBLE,
  PRIMARY KEY (`sales`, `Salesperson_company_id`),
  CONSTRAINT `fk_Salesperson_has_Cars_Salesperson`
    FOREIGN KEY (`Salesperson_company_id`)
    REFERENCES `mydb`.`Salesperson` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Cars_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `mydb`.`Cars` (`vin_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoice_has_Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoice_has_Customer` (
  `Invoice_VIN` INT NOT NULL,
  `Customer_sales_value` FLOAT NOT NULL,
  `Customer_Invoice_VIN` INT NOT NULL,
  PRIMARY KEY (`Invoice_VIN`, `Customer_sales_value`, `Customer_Invoice_VIN`),
  INDEX `fk_Invoice_has_Customer_Customer1_idx` (`Customer_sales_value` ASC, `Customer_Invoice_VIN` ASC) VISIBLE,
  INDEX `fk_Invoice_has_Customer_Invoice1_idx` (`Invoice_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_has_Customer_Invoice1`
    FOREIGN KEY (`Invoice_VIN`)
    REFERENCES `mydb`.`Invoice` (`sales_value`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_has_Customer_Customer1`
    FOREIGN KEY (`Customer_sales_value` , `Customer_Invoice_VIN`)
    REFERENCES `mydb`.`Customer` (`customer_id` , `Invoice_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoice_has_Customer_has_Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoice_has_Customer_has_Salesperson` (
  `Invoice_has_Customer_Invoice_VIN` INT NOT NULL,
  `Invoice_has_Customer_Customer_sales_value` FLOAT NOT NULL,
  `Invoice_has_Customer_Customer_Invoice_VIN` INT NOT NULL,
  `Salesperson_company_id` INT NOT NULL,
  PRIMARY KEY (`Invoice_has_Customer_Invoice_VIN`, `Invoice_has_Customer_Customer_sales_value`, `Invoice_has_Customer_Customer_Invoice_VIN`, `Salesperson_company_id`),
  INDEX `fk_Invoice_has_Customer_has_Salesperson_Salesperson1_idx` (`Salesperson_company_id` ASC) VISIBLE,
  INDEX `fk_Invoice_has_Customer_has_Salesperson_Invoice_has_Custome_idx` (`Invoice_has_Customer_Invoice_VIN` ASC, `Invoice_has_Customer_Customer_sales_value` ASC, `Invoice_has_Customer_Customer_Invoice_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_has_Customer_has_Salesperson_Invoice_has_Customer1`
    FOREIGN KEY (`Invoice_has_Customer_Invoice_VIN` , `Invoice_has_Customer_Customer_sales_value` , `Invoice_has_Customer_Customer_Invoice_VIN`)
    REFERENCES `mydb`.`Invoice_has_Customer` (`Invoice_VIN` , `Customer_sales_value` , `Customer_Invoice_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_has_Customer_has_Salesperson_Salesperson1`
    FOREIGN KEY (`Salesperson_company_id`)
    REFERENCES `mydb`.`Salesperson` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoice_has_Customer_has_Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoice_has_Customer_has_Cars` (
  `Invoice_has_Customer_Invoice_VIN` INT NOT NULL,
  `Invoice_has_Customer_Customer_sales_value` FLOAT NOT NULL,
  `Invoice_has_Customer_Customer_Invoice_VIN` INT NOT NULL,
  `Cars_VIN` INT NOT NULL,
  PRIMARY KEY (`Invoice_has_Customer_Invoice_VIN`, `Invoice_has_Customer_Customer_sales_value`, `Invoice_has_Customer_Customer_Invoice_VIN`, `Cars_VIN`),
  INDEX `fk_Invoice_has_Customer_has_Cars_Cars1_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_Invoice_has_Customer_has_Cars_Invoice_has_Customer1_idx` (`Invoice_has_Customer_Invoice_VIN` ASC, `Invoice_has_Customer_Customer_sales_value` ASC, `Invoice_has_Customer_Customer_Invoice_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_has_Customer_has_Cars_Invoice_has_Customer1`
    FOREIGN KEY (`Invoice_has_Customer_Invoice_VIN` , `Invoice_has_Customer_Customer_sales_value` , `Invoice_has_Customer_Customer_Invoice_VIN`)
    REFERENCES `mydb`.`Invoice_has_Customer` (`Invoice_VIN` , `Customer_sales_value` , `Customer_Invoice_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_has_Customer_has_Cars_Cars1`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `mydb`.`Cars` (`vin_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Customer` (
  `Salesperson_sales_value` FLOAT NOT NULL,
  `Salesperson_company_id` INT NOT NULL,
  `Customer_sales_value` FLOAT NOT NULL,
  `Customer_Invoice_VIN` INT NOT NULL,
  PRIMARY KEY (`Salesperson_sales_value`, `Salesperson_company_id`, `Customer_sales_value`, `Customer_Invoice_VIN`),
  INDEX `fk_Salesperson_has_Customer_Customer1_idx` (`Customer_sales_value` ASC, `Customer_Invoice_VIN` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Customer_Salesperson1_idx` (`Salesperson_sales_value` ASC, `Salesperson_company_id` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customer_Salesperson1`
    FOREIGN KEY (`Salesperson_company_id`)
    REFERENCES `mydb`.`Salesperson` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Customer_Customer1`
    FOREIGN KEY (`Customer_sales_value` , `Customer_Invoice_VIN`)
    REFERENCES `mydb`.`Customer` (`customer_id` , `Invoice_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customer1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Customer1` (
  `Salesperson_sales_value` FLOAT NOT NULL,
  `Customer_sales_value` FLOAT NOT NULL,
  `Customer_Cars_VIN` INT NOT NULL,
  PRIMARY KEY (`Salesperson_sales_value`, `Customer_sales_value`, `Customer_Cars_VIN`),
  INDEX `fk_Salesperson_has_Customer1_Customer1_idx` (`Customer_sales_value` ASC, `Customer_Cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customer1_Customer1`
    FOREIGN KEY (`Customer_sales_value` , `Customer_Cars_VIN`)
    REFERENCES `mydb`.`Customer` (`customer_id` , `Car_VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customer2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Customer2` (
  `Salesperson_sales_value` FLOAT NOT NULL,
  `Customer_sales_value` FLOAT NOT NULL,
  PRIMARY KEY (`Salesperson_sales_value`, `Customer_sales_value`),
  INDEX `fk_Salesperson_has_Customer2_Customer1_idx` (`Customer_sales_value` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customer2_Customer1`
    FOREIGN KEY (`Customer_sales_value`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customer3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Customer3` (
  `Salesperson_company_id` INT NOT NULL,
  `Customer_customer_id` FLOAT NOT NULL,
  PRIMARY KEY (`Salesperson_company_id`, `Customer_customer_id`),
  INDEX `fk_Salesperson_has_Customer3_Customer1_idx` (`Customer_customer_id` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Customer3_Salesperson1_idx` (`Salesperson_company_id` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customer3_Salesperson1`
    FOREIGN KEY (`Salesperson_company_id`)
    REFERENCES `mydb`.`Salesperson` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Customer3_Customer1`
    FOREIGN KEY (`Customer_customer_id`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer_has_Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer_has_Cars` (
  `Customer_customer_id` FLOAT NOT NULL,
  `Cars_vin_id` FLOAT NOT NULL,
  `Cars_Invoice_sales_value` FLOAT NOT NULL,
  PRIMARY KEY (`Customer_customer_id`, `Cars_vin_id`, `Cars_Invoice_sales_value`),
  INDEX `fk_Customer_has_Cars_Cars1_idx` (`Cars_vin_id` ASC, `Cars_Invoice_sales_value` ASC) VISIBLE,
  INDEX `fk_Customer_has_Cars_Customer1_idx` (`Customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_has_Cars_Customer1`
    FOREIGN KEY (`Customer_customer_id`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Cars_Cars1`
    FOREIGN KEY (`Cars_vin_id` , `Cars_Invoice_sales_value`)
    REFERENCES `mydb`.`Cars` (`vin_id` , `Invoice_sales_value`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Invoice` (
  `Salesperson_company_id` INT NOT NULL,
  `Invoice_sales_value` FLOAT NOT NULL,
  `Invoice_vin` VARCHAR(45) NOT NULL,
  `Invoice_Customer_customer_id` FLOAT NOT NULL,
  PRIMARY KEY (`Salesperson_company_id`, `Invoice_sales_value`, `Invoice_vin`, `Invoice_Customer_customer_id`),
  INDEX `fk_Salesperson_has_Invoice_Invoice1_idx` (`Invoice_sales_value` ASC, `Invoice_vin` ASC, `Invoice_Customer_customer_id` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Invoice_Salesperson1_idx` (`Salesperson_company_id` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Invoice_Salesperson1`
    FOREIGN KEY (`Salesperson_company_id`)
    REFERENCES `mydb`.`Salesperson` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Invoice_Invoice1`
    FOREIGN KEY (`Invoice_sales_value` , `Invoice_vin` , `Invoice_Customer_customer_id`)
    REFERENCES `mydb`.`Invoice` (`sales_value` , `vin` , `Customer_customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
