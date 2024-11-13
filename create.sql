CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (VIN VARCHAR(100), manufacturer VARCHAR(100), model VARCHAR(100), year YEAR, color VARCHAR(50), price DECIMAL);
CREATE TABLE invoices (invoice_number INT, date DATE, car_VIN VARCHAR(17), customer_id INT, staff_ID INT, total_price DECIMAL); 
CREATE TABLE customers (customer_id INT, name VARCHAR(255), phone_number VARCHAR(20), email VARCHAR(255), address TEXT, city VARCHAR(100), state_province VARCHAR(100), country VARCHAR(100), zip_code VARCHAR(20));
CREATE TABLE salespersons (staff_id INT, name VARCHAR(100), store VARCHAR(100));

SHOW TABLES;