CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (vehicle_identification VARCHAR(10) , manufacturer VARCHAR(30), model VARCHAR(10), product_year DATE, color VARCHAR(10)); 
CREATE TABLE Customers (customer_ID VARCHAR(10), name VARCHAR(50), phone_number INT(10), email VARCHAR(50), address VARCHAR(100), city VARCHAR(50), state VARCHAR(50), country VARCHAR(20), zipcode VARCHAR(10));
CREATE TABLE salespersons (staff_ID VARCHAR(10), name VARCHAR(50), store VARCHAR(20));
CREATE TABLE invoices (invoice_number INT(10), date DATE, car VARCHAR(10), customer_ID VARCHAR(10), staff_ID int(10));

