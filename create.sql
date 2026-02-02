CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
	id int AUTO_INCREMENT PRIMARY KEY,
	VIN varchar(50) NOT NULL, 
    manufacturer varchar(50) NOT NULL,
    model varchar(50) NOT NULL,
    year int NOT NULL,
    color varchar(50)
    );
    
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(
	id int AUTO_INCREMENT PRIMARY KEY,
	salesperson_ID int NOT NULL, 
    name varchar(50) NOT NULL,
    store varchar(50) NOT NULL
    );

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
	id int AUTO_INCREMENT PRIMARY KEY,
	customer_ID int NOT NULL, 
    name varchar(50) NOT NULL,
    phone_number varchar(50) NOT NULL,
    email varchar(50)  DEFAULT "-",
    address varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    state_province varchar(50) NOT NULL,
    country varchar(50) NOT NULL,
    postal_code varchar(5)
    );

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
	id int AUTO_INCREMENT PRIMARY KEY,
	invoice_ID int NOT NULL, 
    date date NOT NULL,
    car_ID int NOT NULL,
    customer_ID int NOT NULL,
    salesperson_ID int NOT NULL,
    FOREIGN KEY (salesperson_ID) REFERENCES salespersons(id),
    FOREIGN KEY (customer_ID) REFERENCES customers(id),
    FOREIGN KEY (car_ID) REFERENCES cars(id)
    );
    


SELECT * FROM cars;