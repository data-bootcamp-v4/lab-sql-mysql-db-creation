DROP DATABASE IF EXISTS lab_mysql_challenge_1;

CREATE DATABASE lab_mysql_challenge_1;
use lab_mysql_challenge_1;

CREATE TABLE cars (
	id INT PRIMARY KEY AUTO_INCREMENT,
    vin VARCHAR(20),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    `year` YEAR,
    color VARCHAR(50)
);

CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id VARCHAR(50),
    `name` VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
	id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id VARCHAR(50),
    `name` VARCHAR(50),
    store VARCHAR(255)
);

CREATE TABLE invoices (
	id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number VARCHAR(50),
    `date` DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

