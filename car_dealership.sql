CREATE DATABASE IF NOT EXISTS car_dealership;

USE car_dealership;

create table cars (
car_id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR (255),
manufacturer VARCHAR (255),
model VARCHAR (255),
car_year YEAR,
color VARCHAR (255));

create table customers (
id_customer INT AUTO_INCREMENT PRIMARY KEY,
cust_name VARCHAR (255),
cust_email VARCHAR (255),
phone VARCHAR (255),
address VARCHAR (255),
city VARCHAR (255),
state VARCHAR (255),
country VARCHAR (255),
zip_code VARCHAR (255));

create table salesperson (
salesman_id INT AUTO_INCREMENT PRIMARY KEY,
salesman_name VARCHAR (255),
store VARCHAR (255));

create table invoices (
invoice_id INT AUTO_INCREMENT PRIMARY KEY,
invoice_date DATE,
car VARCHAR (255),
customer VARCHAR (255),
salesperson VARCHAR (255)); 

 