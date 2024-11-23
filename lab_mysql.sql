-- CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lab_mysql`.`Invoices` ;
DROP TABLE IF EXISTS `lab_mysql`.`Cars` ;
DROP TABLE IF EXISTS `lab_mysql`.`Customers` ;
DROP TABLE IF EXISTS `lab_mysql`.`Salespersons` ;

CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
 `id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `model` VARCHAR(45) NULL DEFAULT NULL,
  `year` INT NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
  `cust_id` INT NOT NULL AUTO_INCREMENT,
  `cust_name` VARCHAR(45) NULL DEFAULT NULL,
  `cust_phone` VARCHAR(45) NULL DEFAULT NULL,
  `cust_email` VARCHAR(45) NULL DEFAULT NULL,
  `cust_address` VARCHAR(45) NULL DEFAULT NULL,
  `cust_city` VARCHAR(45) NULL DEFAULT NULL,
  `cust_state` VARCHAR(45) NULL DEFAULT NULL,
  `cust_country` VARCHAR(45) NULL DEFAULT NULL,
  `cust_zipcode` INT NULL DEFAULT NULL,
  PRIMARY KEY (`cust_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (
  `staff_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NULL DEFAULT NULL,
  `car_id` INT NOT NULL,
  `customer_id` INT NULL DEFAULT NULL,
  `salesperson_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_number`),
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`car_id`)
    REFERENCES `lab_mysql`.`Cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers`
    FOREIGN KEY (`customer_id`)
    REFERENCES `lab_mysql`.`Customers` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons`
    FOREIGN KEY (`salesperson_id`)
    REFERENCES `lab_mysql`.`Salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;




