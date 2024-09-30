CREATE DATABASE IF NOT EXISTS car_dealership;

USE car_dealership;

CREATE TABLE IF NOT EXISTS`cars`(
 `car_id` int NOT NULL AUTO_INCREMENT,
 `VIN` TINYTEXT NOT NULL,
 `manufacturer` TINYTEXT, 
 `model` TINYTEXT NOT NULL,
 `year` int NOT NULL,
 `color` TINYTEXT NOT NULL,
 PRIMARY KEY(`car_id`)  
 );
 
CREATE TABLE IF NOT EXISTS `customers`( 
`customer_id` INT NOT NULL AUTO_INCREMENT, 
`name` LONGTEXT NOT NULL, 
`phone_number` TINYTEXT, 
`email` LONGTEXT, 
`address` LONGTEXT, 
`city` TINYTEXT, 
`state` TINYTEXT, 
`country` TINYTEXT, 
`zip/postal code` TINYTEXT,  
PRIMARY KEY(`customer_id`)  
);

CREATE TABLE IF NOT EXISTS `salesperson`( 
`staff_id` INT NOT NULL AUTO_INCREMENT,
`name` LONGTEXT NOT NULL, 
`store` LONGTEXT,  
PRIMARY KEY(`staff_id`)  
);

CREATE TABLE IF NOT EXISTS `invoices`( 
`invoice_id` INT NOT NULL AUTO_INCREMENT, 
`date` DATE NOT NULL, 
`car_id` INT NOT NULL, 
`customer_id` INT NOT NULL, 
`staff_id` INT NOT NULL, 
 PRIMARY KEY(`invoice_id`),
 FOREIGN KEY(`car_id`) REFERENCES `cars`(`car_id`),
 FOREIGN KEY(`customer_id`) REFERENCES `customers`(`customer_id`),
 FOREIGN KEY(`staff_id`) REFERENCES `salesperson`(`staff_id`)
  );


