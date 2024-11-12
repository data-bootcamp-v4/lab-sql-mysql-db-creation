

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
   VIN VARCHAR(20) PRIMARY KEY, 
   manufacturer VARCHAR(20), 
   model VARCHAR(20), 
   colour VARCHAR(20), 
   year YEAR);
       
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
   customer_ID INT PRIMARY KEY AUTO_INCREMENT, 
   name VARCHAR(20), 
   phone_number VARCHAR(20), 
   email VARCHAR(30), 
   address VARCHAR(30), 
   city VARCHAR(20), 
   state_province VARCHAR (20), 
   country VARCHAR(3), 
   zip_postal INT);
   
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
   staff_ID INT PRIMARY KEY AUTO_INCREMENT, 
   name VARCHAR(20), 
   store VARCHAR(20));

drop table if exists invoices;
create table invoices (
  invoice_number INT PRIMARY KEY AUTO_INCREMENT,
  date DATE, 
  VIN VARCHAR(20), 
  customer_ID INT, 
  staff_ID INT, 
  FOREIGN KEY (VIN) REFERENCES cars(VIN), 
  FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID), 
  FOREIGN KEY (staff_ID) REFERENCES salespersons(staff_ID)
);

 
describe cars;
show TABLES;