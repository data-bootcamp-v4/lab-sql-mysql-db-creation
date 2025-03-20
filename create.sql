CREATE DATABASE IF NOT EXISTS lab_mysql;
	
	USE lab_mysql;
    
	DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin CHAR(17),
	manufacturer VARCHAR(30), 
	model VARCHAR(30),
	`year` YEAR,
	color VARCHAR(20));
                    
	DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT(12),
    `name` VARCHAR(40),
    phone VARCHAR(20),
    email VARCHAR(40),
    address VARCHAR(50),
    city VARCHAR(30),
    state_prov VARCHAR(30),
    country CHAR(3),
    zip_postal VARCHAR(10));
	
        DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
	id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT(6),
	`name` VARCHAR(40), 
	store VARCHAR(30));
    
        DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
	id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_nr INT(12),
	date DATE, 
	car INT,
    customer INT(12),
    salesperson INT(6),
    CONSTRAINT fk_car FOREIGN KEY (car) REFERENCES cars(car_id),
    CONSTRAINT fk_customer FOREIGN KEY (customer) REFERENCES customers(id),
    CONSTRAINT fk_salesperson FOREIGN KEY (salesperson) REFERENCES salespersons(id));
    

