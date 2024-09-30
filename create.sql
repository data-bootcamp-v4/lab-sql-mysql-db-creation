CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
vin VARCHAR(20), 
manufacturer VARCHAR(50), 
model VARCHAR(50), 
year_released YEAR, 
color VARCHAR(20)
);

CREATE TABLE salespersons (
  staff_id INT, 
  name VARCHAR(50),                  
  store VARCHAR(50)                  
);

CREATE TABLE customers (
  customer_id INT,     
  name VARCHAR(100),                  
  phone VARCHAR(15),          
  email VARCHAR(50),                
  address VARCHAR(100),              
  city VARCHAR(50),                 
  state VARCHAR(50),        
  country VARCHAR(50),                
  zip VARCHAR(10)   
);

CREATE TABLE invoices (
  invoice_number INT,
  invoice_date DATE,
  vin VARCHAR(20),
  customer_id INT,
  salesperson_id INT
);



