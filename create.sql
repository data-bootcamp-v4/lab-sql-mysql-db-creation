CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	vehicle_identification_number_VIN varchar(50) not null,
	manufacturer varchar(50),
	model varchar(50),
	`year` varchar(4),
	color varchar(50),
    PRIMARY KEY (`vehicle_identification_number_VIN`)
    );

DROP TABLE IF EXISTS invoices;

CREATE TABLE customers (
	customer_ID bigint not null auto_increment,
	`name` varchar(50),
	phone_number varchar(50),
	email varchar(50),
	address varchar(50),
	city varchar(50),
	state_province varchar(50),
	country varchar(50),
	zip_code varchar(50),
	PRIMARY KEY (`customer_ID`)
    );
    
    
DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
	staff_ID bigint not null auto_increment,
	`name` varchar(50),
	store varchar(50),
	PRIMARY KEY (`staff_ID`)
    );

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
	invoice_number bigint not null auto_increment,
	`date` date,
	car_VIN varchar(50),
	customer bigint,
	salesperson_staff_ID bigint,
    PRIMARY KEY (`invoice_number`),
    FOREIGN KEY (`customer`) REFERENCES `customers` (`customer_ID`),
    FOREIGN KEY (`salesperson_staff_ID`) REFERENCES `salespersons` (`staff_ID`),
    FOREIGN KEY (`car_VIN`) REFERENCES `cars` (`vehicle_identification_number_VIN`)    
    );
