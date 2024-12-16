CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS Cars;
CREATE TABLE Cars (
id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(20), 
manufacturer VARCHAR(50),
model VARCHAR(20),
year INT,
color VARCHAR(10),
car_company_foreign INT);


DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id varchar(10), 
name VARCHAR(15),
store varchar(15));


DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number INT,
dates DATE,
car_id INT REFERENCES Cars(id),
customer_id INT REFERENCES Customers(id),
salesperson_id INT REFERENCES Salespersons(id) );

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
customer_name VARCHAR(20),
phone_number Varchar(25),
email VARCHAR(25),
address VARCHAR(100),
city VARCHAR(20),
state_province VARCHAR(20),
country VARCHAR(20),
zip_postal INT);

USE lab_mysql;

SHOW TABLES;

DESCRIBE cars;
DESCRIBE customers;
DESCRIBE salespersons;
DESCRIBE invoices;
