CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
-- create tables
-- cars
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
vehicle_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
manufacturer VARCHAR(50) NOT NULL,
model  VARCHAR(50) NOT NULL,
year INT NOT NULL,
color VARCHAR(30)
);

-- Customers
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
customer_id INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,  
name  VARCHAR(50) NOT NULL,
phone  VARCHAR(50) NOT NULL,
email  VARCHAR(50) NOT NULL,
address VARCHAR(50),
city VARCHAR(50),
state_province VARCHAR(50),
country VARCHAR(50),
zip_code VARCHAR(5) ,
year  INT,
vehicle_id INT,
FOREIGN KEY (vehicle_id) REFERENCES cars(vehicle_id) 
);

-- Salespersons
DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
staff_ID INT  AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name  VARCHAR(50) NOT NULL,
store VARCHAR(50),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Invoices
DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
invoice_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
date  DATE NOT NULL,
car  INT NOT NULL,
customer  INT NOT NULL,
salesperson  INT NOT NULL,
FOREIGN KEY (car) REFERENCES cars(vehicle_id),
FOREIGN KEY (customer) REFERENCES Customers(customer_id),
FOREIGN KEY (salesperson) REFERENCES Salespersons(staff_ID)
);
