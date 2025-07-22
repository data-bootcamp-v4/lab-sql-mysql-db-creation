CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
 VIN VARCHAR(50),
 manufacture VARCHAR(50),
 model VARCHAR(50), 
 year VARCHAR(50), 
 color VARCHAR(50)
 );
 DROP TABLE IF EXISTS customers;
 CREATE TABLE customers (
 customerID VARCHAR(100),
 name VARCHAR(50),
 phonenumber VARCHAR(50),
 email VARCHAR(50),
 address VARCHAR(50),
 city VARCHAR(50),
 state_province VARCHAR(50),
 country VARCHAR(50),
 zip_postalcode VARCHAR(50)
 );
 DROP TABLE IF EXISTS salesperons;
 CREATE TABLE salespersons (
 staffID VARCHAR(100),
 name_staff VARCHAR(50),
 store VARCHAR(50)
 );
 DROP TABLE IF EXISTS invoices;
 CREATE TABLE invoices (
 invoice_number VARCHAR(100),
 date VARCHAR(50),
 VIN VARCHAR(50),
 staff_ID VARCHAR(100)
 );