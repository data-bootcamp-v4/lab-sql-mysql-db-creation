CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `Car`;

SET foreign_key_checks = 1;
 
CREATE TABLE IF NOT EXISTS Car (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    VIN VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50) NOT NULL,
	cars_year DATE NOT NULL,
    cars_color VARCHAR(50)
);
SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `Customers`;

SET foreign_key_checks = 1;

 
CREATE TABLE IF NOT EXISTS Customers (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_ID VARCHAR(50) NOT NULL UNIQUE,
    customer_name VARCHAR(50),
    phone_number INT NOT NULL,
	email VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_postal VARCHAR(50)
);

 
SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `Salespersons`;

SET foreign_key_checks = 1;

CREATE TABLE IF NOT EXISTS Salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    staff_ID INT NOT NULL UNIQUE,
    staff_name VARCHAR(50),
	store VARCHAR(50) NOT NULL
);



SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `Invoices`;

SET foreign_key_checks = 1;
 
CREATE TABLE IF NOT EXISTS Invoices (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    invoice_number INT NOT NULL UNIQUE,
    invoices_date DATE NOT NULL,
    car_id INT NOT NULL,           
    customer_id INT NOT NULL,     
    salesperson_id INT,           


    FOREIGN KEY (car_id) REFERENCES Car(id) ON DELETE CASCADE,         
    FOREIGN KEY (customer_id) REFERENCES Customers(id) ON DELETE CASCADE,
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id) ON DELETE SET NULL 
);

SHOW TABLES;

DESCRIBE CAR;
DESCRIBE CUSTOMERS;
DESCRIBE INVOICES;
DESCRIBE SALESPERSONS;


