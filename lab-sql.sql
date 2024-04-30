CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE `cars` (`vin` VARCHAR(40),
       `manufacturer` VARCHAR(40), 
	   `model` VARCHAR(40),
       `year` INT, 
       `color` VARCHAR(40),
       PRIMARY KEY (`vin`)
       )
       ;

CREATE TABLE `customers` (`cust_id` INT,
	   `cust_name` VARCHAR(40),
       `cust_phone` INT, 
       `cust_email` VARCHAR(40),
	   `cust_address` VARCHAR(40),
       `cust_city` VARCHAR(40),
       `cust_state` VARCHAR(40),
       `cust_country` VARCHAR(20),
       `cust_zipcode` INT,
       PRIMARY KEY (`cust_id`)
       )
       ;
       
       
CREATE TABLE `salespersons` (`staff_id` INT, 
	   `name` VARCHAR(40),
       `store` VARCHAR(40),
       PRIMARY KEY (`staff_id`)
       )
       ;
       
CREATE TABLE `invoice` (`invoice_number` INT, 
	   `date` DATE,
       `vin` VARCHAR(40),
       `cust_id` INT,
       `staff_id` INT,
       PRIMARY KEY (`invoice_number`),
       FOREIGN KEY (`vin`) REFERENCES `cars` (`vin`),
	   FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`),
       FOREIGN KEY (`staff_id`) REFERENCES `salespersons` (`staff_id`)
       )
       ;
       
ALTER TABLE `customers`
MODIFY `cust_phone` VARCHAR (40);
       