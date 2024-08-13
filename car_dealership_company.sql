-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lab_db_creation
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `lab_db_creation` ;

-- -----------------------------------------------------
-- Schema lab_db_creation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_db_creation` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `lab_db_creation` ;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`Cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`Cars` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`Cars` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(50) NULL COMMENT 'Vehicle Identification Number',
  `manufacturer` VARCHAR(50) NULL,
  `model` VARCHAR(50) NULL,
  `year` INT NULL,
  `color` VARCHAR(20) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`Customers` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`Customers` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `customerID` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  `phone_number` VARCHAR(20) NULL,
  `email` VARCHAR(100) NULL,
  `address` VARCHAR(255) NULL,
  `city` VARCHAR(100) NULL,
  `state/province` VARCHAR(100) NULL,
  `country` VARCHAR(100) NULL,
  `zip/postal code` VARCHAR(20) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`Salespersons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`Salespersons` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`Salespersons` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `staffID` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  `store` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `lab_db_creation`.`invoices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_db_creation`.`invoices` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `lab_db_creation`.`invoices` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` INT NOT NULL,
  `invoice_date` DATE NOT NULL,
  `car` INT NOT NULL,
  `customer` INT NOT NULL,
  `salesperson` INT NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`car`)
    REFERENCES `lab_db_creation`.`Cars` (`ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`customer`)
    REFERENCES `lab_db_creation`.`Customers` (`ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Invoices_Salesperson`
    FOREIGN KEY (`salesperson`)
    REFERENCES `lab_db_creation`.`Salespersons` (`ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE INDEX `ID_idx` ON `lab_db_creation`.`invoices` (`car` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_Invoices_Customers1_idx` ON `lab_db_creation`.`invoices` (`customer` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_Invoices_Salesperson_idx` ON `lab_db_creation`.`invoices` (`salesperson` ASC) VISIBLE;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `lab_db_creation`.`Cars`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab_db_creation`;
INSERT INTO `lab_db_creation`.`Cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');
INSERT INTO `lab_db_creation`.`Cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');
INSERT INTO `lab_db_creation`.`Cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');
INSERT INTO `lab_db_creation`.`Cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');
INSERT INTO `lab_db_creation`.`Cars` (`ID`, `VIN`, `manufacturer`, `model`, `year`, `color`) VALUES (6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab_db_creation`.`Customers`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab_db_creation`;
INSERT INTO `lab_db_creation`.`Customers` (`ID`, `customerID`, `name`, `phone_number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal code`) VALUES (1, 10001, 'Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');
INSERT INTO `lab_db_creation`.`Customers` (`ID`, `customerID`, `name`, `phone_number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal code`) VALUES (2, 20001, 'Abraham Lincoln', '+1 305 907 7086', 'lincoln@us.gov', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');
INSERT INTO `lab_db_creation`.`Customers` (`ID`, `customerID`, `name`, `phone_number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal code`) VALUES (3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'hello@napoleon.me', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab_db_creation`.`Salespersons`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab_db_creation`;
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (1, 00001, 'Petey Cruiser', 'Madrid');
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (2, 00002, 'Anna Sthesia', 'Barcelona');
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (3, 00003, 'Paul Molive', 'Berlin');
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (4, 00004, 'Gail Forcewind', 'Paris');
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (5, 00005, 'Paige Turner', 'Mimia');
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (6, 00006, 'Bob Frapples', 'Mexico City');
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (7, 00007, 'Walter Melon', 'Amsterdam');
INSERT INTO `lab_db_creation`.`Salespersons` (`ID`, `staffID`, `name`, `store`) VALUES (8, 00008, 'Shonda Leer', 'São Paulo');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab_db_creation`.`invoices`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab_db_creation`;
INSERT INTO `lab_db_creation`.`invoices` (`ID`, `invoice_number`, `invoice_date`, `car`, `customer`, `salesperson`) VALUES (1, 852399038, '2018-08-22', 1, 1, 3);
INSERT INTO `lab_db_creation`.`invoices` (`ID`, `invoice_number`, `invoice_date`, `car`, `customer`, `salesperson`) VALUES (2, 731166526, '2018-12-31', 3, 3, 5);
INSERT INTO `lab_db_creation`.`invoices` (`ID`, `invoice_number`, `invoice_date`, `car`, `customer`, `salesperson`) VALUES (3, 271135104, '2019-01-22', 2, 2, 7);

COMMIT;

