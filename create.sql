# Cars: vin
# Customers: customer_id
# Salespersons: staff_id
# Invoices: invoice_number

USE car_dealership;
CREATE DATABASE IF NOT EXISTS car_dealership;

create table cars(
  VIN VARCHAR(17) PRIMARY KEY,
  manufacturer VARCHAR(50),
  model VARCHAR(17),
  year INT,
  color VARCHAR(17))
  ;
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
name VARCHAR(20),
phone_number VARCHAR(50),
email VARCHAR(50))
;
CREATE TABLE Staff(
staff_ID INT PRIMARY KEY,
name VARCHAR(20),
store VARCHAR(50))
;
CREATE TABLE invoices (
invoice_number INT,
date DATE,
FOREIGN KEY car REFERENCES table_name (VIN) VARCHAR(50),
FOREIGN KEY customer REFERENCES  VARCHAR(50),
staff VARCHAR(50))
FOREIGN KEY (invoices);