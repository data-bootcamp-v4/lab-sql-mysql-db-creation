CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
`car_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`vin` varchar(50) NOT NULL,
`manufacturer` varchar(50) NOT NULL,
`model` varchar(50) NOT NULL,
`car_year` char(4) NOT NULL ,
`color` varchar(50) NOT NULL
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`customer_id` INT NOT NULL,
`cust_name` tinytext NOT NULL,
`phone_number`char(9),
`email`varchar(40),
`address` tinytext,
`city`varchar(30),
`state_province`varchar(30),
`country`varchar(30),
`zip_postal`varchar(20)
);

DROP TABLE IF EXISTS sales_persons;

CREATE TABLE sales_persons (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`staff_id` INT NOT NULL ,
`seller_name` tinytext NOT NULL,
`store` varchar(80) NOT NULL
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`invoice_number` INT NOT NULL ,
`date_inv` date NOT NULL,
`car_id` INT,
`customer_id` INT,
`staff_id` INT,
FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
FOREIGN KEY (`staff_id`) REFERENCES `sales_persons` (`id`)
);