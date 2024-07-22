CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
CREATE TABLE cars(
VIN VARCHAR(63) PRIMARY KEY,
manufacturer VARCHAR(250),
model VARCHAR(250),
car_year INT,
color VARCHAR(250)
);
CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(63),
phone_number VARCHAR(30),
email VARCHAR(30),
address VARCHAR(60),
city VARCHAR(30),
state_province VARCHAR(30),
country VARCHAR(30),
zip_postal_code VARCHAR(30)
);
CREATE TABLE salespersons(
staffID INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
store VARCHAR(30)
);
CREATE TABLE invoices(
ivoice_number INT PRIMARY KEY AUTO_INCREMENT,
date DATE,
carID VARCHAR(63),
customerID INT,
salespersonID INT,
FOREIGN KEY (carID) REFERENCES cars(VIN),
FOREIGN KEY (customerID) REFERENCES customers(customer_id),
FOREIGN KEY (salespersonID) REFERENCES salespersons(staffID)
);
