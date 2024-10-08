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
  `Auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `Customnerid` INT NOT NULL,
  `Phonenumber` INT NULL,
  `E-Mail` VARCHAR(45) NULL,
  `Adresse` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postel/zip code` INT NULL,
  `Phonenumber` INT NULL,
  UNIQUE INDEX `customerid_UNIQUE` (`Auto_increment_id` ASC) VISIBLE,
  PRIMARY KEY (`Auto_increment_id`, `Customnerid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson` (
  `Auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `Salesperson_id` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`Auto_increment_id`, `Salesperson_id`),
  UNIQUE INDEX `Staffid_UNIQUE` (`Auto_increment_id` ASC) VISIBLE,
  UNIQUE INDEX `Salesperson_id_UNIQUE` (`Salesperson_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `Auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `Invoice_id` DATETIME NOT NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Salesperson` VARCHAR(45) NULL,
  `Date` DATETIME NULL,
  `Customer_Auto_increment_id` INT NOT NULL,
  `Customer_Customnerid` INT NOT NULL,
  `Salesperson_Auto_increment_id` INT NOT NULL,
  `Salesperson_Salesperson_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Auto_increment_id`, `Invoice_id`),
  UNIQUE INDEX `InvoiceNumber_UNIQUE` (`Auto_increment_id` ASC) VISIBLE,
  UNIQUE INDEX `Invoice_id_UNIQUE` (`Invoice_id` ASC) VISIBLE,
  INDEX `fk_Invoices_Customer1_idx` (`Customer_Auto_increment_id` ASC, `Customer_Customnerid` ASC) VISIBLE,
  INDEX `fk_Invoices_Salesperson1_idx` (`Salesperson_Auto_increment_id` ASC, `Salesperson_Salesperson_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customer1`
    FOREIGN KEY (`Customer_Auto_increment_id` , `Customer_Customnerid`)
    REFERENCES `mydb`.`Customer` (`Auto_increment_id` , `Customnerid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salesperson1`
    FOREIGN KEY (`Salesperson_Auto_increment_id` , `Salesperson_Salesperson_id`)
    REFERENCES `mydb`.`Salesperson` (`Auto_increment_id` , `Salesperson_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `Auto_increment_id` INT NOT NULL AUTO_INCREMENT,
  `VIN` INT NOT NULL,
  `Model` VARCHAR(45) NULL,
  `Year` DATETIME NULL,
  `Color` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Customer_Auto_increment_id` INT NOT NULL,
  `Customer_Customnerid` INT NOT NULL,
  `Salesperson_Auto_increment_id` INT NOT NULL,
  `Salesperson_Salesperson_id` VARCHAR(45) NOT NULL,
  `Invoices_Auto_increment_id` INT NOT NULL,
  `Invoices_Invoice_id` DATETIME NOT NULL,
  PRIMARY KEY (`Auto_increment_id`, `VIN`, `Invoices_Auto_increment_id`, `Invoices_Invoice_id`),
  UNIQUE INDEX `VIN_UNIQUE` (`Auto_increment_id` ASC) VISIBLE,
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  INDEX `fk_cars_Customer_idx` (`Customer_Auto_increment_id` ASC, `Customer_Customnerid` ASC) VISIBLE,
  INDEX `fk_cars_Salesperson1_idx` (`Salesperson_Auto_increment_id` ASC, `Salesperson_Salesperson_id` ASC) VISIBLE,
  INDEX `fk_cars_Invoices1_idx` (`Invoices_Auto_increment_id` ASC, `Invoices_Invoice_id` ASC) VISIBLE,
  CONSTRAINT `fk_cars_Customer`
    FOREIGN KEY (`Customer_Auto_increment_id` , `Customer_Customnerid`)
    REFERENCES `mydb`.`Customer` (`Auto_increment_id` , `Customnerid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_Salesperson1`
    FOREIGN KEY (`Salesperson_Auto_increment_id` , `Salesperson_Salesperson_id`)
    REFERENCES `mydb`.`Salesperson` (`Auto_increment_id` , `Salesperson_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_Invoices1`
    FOREIGN KEY (`Invoices_Auto_increment_id` , `Invoices_Invoice_id`)
    REFERENCES `mydb`.`Invoices` (`Auto_increment_id` , `Invoice_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salesperson_has_Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salesperson_has_Customer` (
  `Salesperson_Auto_increment_id` INT NOT NULL,
  `Salesperson_Salesperson_id` VARCHAR(45) NOT NULL,
  `Customer_Auto_increment_id` INT NOT NULL,
  `Customer_Customnerid` INT NOT NULL,
  PRIMARY KEY (`Salesperson_Auto_increment_id`, `Salesperson_Salesperson_id`, `Customer_Auto_increment_id`, `Customer_Customnerid`),
  INDEX `fk_Salesperson_has_Customer_Customer1_idx` (`Customer_Auto_increment_id` ASC, `Customer_Customnerid` ASC) VISIBLE,
  INDEX `fk_Salesperson_has_Customer_Salesperson1_idx` (`Salesperson_Auto_increment_id` ASC, `Salesperson_Salesperson_id` ASC) VISIBLE,
  CONSTRAINT `fk_Salesperson_has_Customer_Salesperson1`
    FOREIGN KEY (`Salesperson_Auto_increment_id` , `Salesperson_Salesperson_id`)
    REFERENCES `mydb`.`Salesperson` (`Auto_increment_id` , `Salesperson_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Salesperson_has_Customer_Customer1`
    FOREIGN KEY (`Customer_Auto_increment_id` , `Customer_Customnerid`)
    REFERENCES `mydb`.`Customer` (`Auto_increment_id` , `Customnerid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
