-- ======================================================================================================
-- DROP ALL TABLES
-- DROP TABLE IF EXISTS `CARS`;
-- DROP TABLE IF EXISTS `CUSTOMERS`;
-- DROP TABLE IF EXISTS `SALESPERSONS`;
-- DROP TABLE IF EXISTS `INVOICES`;
-- ======================================================================================================
-- DROP DATABASE (with all tables)
-- DROP DATABASE lab_mysql;
-- ======================================================================================================
-- create lab_mysql database if it doesn't exist ---------------------- 
CREATE DATABASE IF NOT EXISTS lab_mysql;
-- ======================================================================================================
-- use lab_mysql database ----------------------
USE lab_mysql;
-- ======================================================================================================
-- DROP ALL TABLES
DROP TABLE IF EXISTS `CARS`;
DROP TABLE IF EXISTS `CUSTOMERS`;
DROP TABLE IF EXISTS `SALESPERSONS`;
DROP TABLE IF EXISTS `INVOICES`;

-- ======================================================================================================
DROP TABLE IF EXISTS `CARS`;
-- TABLE : CARS ----------------------------------------------------------------------------------------
CREATE TABLE `CARS` (
	`VIN` CHAR(50),
    `manufacturer`CHAR(100), 
    `model` CHAR(100), 
    `year` INT, 
    `color` CHAR(100),
	
    -- FOREIGN KEYS:
    `customer ID` INT,
    	-- FK CUSTOMERS
	`invoice number` BIGINT,
    	-- FK INVOICES
    
    -- PRIMARY KEY 
    `car ID` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`car ID`) 
);
-- ======================================================================================================
DROP TABLE IF EXISTS `CUSTOMERS`;
-- TABLE : CUSTOMERS ------------------------------------------------------------------------------------
CREATE TABLE `CUSTOMERS` (
    `name` CHAR(100), 
    `phone number` VARCHAR(20), 
    `email` CHAR(100), 
    `address` CHAR(100), 
    `city` CHAR(100), 
    `state/province` CHAR(100), 
    `country` CHAR(100), 
    `zip/postal code` CHAR(10),    
    
    -- FOREIGN KEYS:
    `staff ID` INT(5) ZEROFILL, 
        -- FK SALESPERSONS
    
    -- PRIMARY KEY
    `customer ID` INT,  
	PRIMARY KEY (`customer ID`) 
);
-- ======================================================================================================
DROP TABLE IF EXISTS `SALESPERSONS`;
-- TABLE : SALESPERSONS ---------------------------------------------------------------------------------
CREATE TABLE `SALESPERSONS` (
    `name` CHAR(100), 
	`store` CHAR(100),
    -- FOREIGN KEYS:
		-- NONE
    -- PRIMARY KEY
    `staff ID` INT(5) ZEROFILL,
	PRIMARY KEY (`staff ID`) 
);

-- ======================================================================================================
DROP TABLE IF EXISTS `INVOICES`;
-- TABLE : INVOICES -------------------------------------------------------------------------------------
CREATE TABLE `INVOICES` (
    `date` DATE,
    
    -- FOREIGN KEYS:
	`car ID` INT,
        -- FK CARS / CAR
	`customer ID` INT,
        -- FK CUSTOMERS / CUSTOMER
	`staff ID` INT(5) ZEROFILL, 
		-- FK from SALESPERSONS / STUFF


    -- PRIMARY KEY
    `invoice number` BIGINT AUTO_INCREMENT,  
	PRIMARY KEY (`invoice number`) 
);

-- ========================================================================================================
-- ADD FK to CUSTOMERS ------------------------------------------------------------------------------------
ALTER TABLE `CUSTOMERS`
ADD CONSTRAINT `CUSTOMERS FK SALESPERSONS` FOREIGN KEY (`staff ID`) REFERENCES SALESPERSONS(`staff ID`);
-- ADD FK to CARS -----------------------------------------------------------------------------------------
ALTER TABLE `CARS`
ADD CONSTRAINT `CARS FK CUSTOMERS` FOREIGN KEY (`customer ID`) REFERENCES CUSTOMERS(`customer ID`),
ADD CONSTRAINT `CARS FK INVOICES` FOREIGN KEY (`invoice number`) REFERENCES INVOICES(`invoice number`);

-- ADD FK to INVOICES -------------------------------------------------------------------------------------
ALTER TABLE `INVOICES`
-- ADD CONSTRAINT `INVOICES FK CARS` FOREIGN KEY (`car ID`) REFERENCES CARS(`car ID`),
ADD CONSTRAINT `INVOICES FK CUSTOMERS` FOREIGN KEY (`customer ID`) REFERENCES CUSTOMERS(`customer ID`),
ADD CONSTRAINT `INVOICES FK SALESPERSONS` FOREIGN KEY (`staff ID`) REFERENCES SALESPERSONS(`staff ID`);


