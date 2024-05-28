CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_VIN INT, 
manufacturer VARCHAR(20), 
model VARCHAR(20), year INT, 
color VARCHAR(20));

DROP TABLE IF EXISTS invoice;
CREATE TABLE invoices (invoice_number INT, 
date DATE, car_VIN INT, 
customer_ID INT, salesperson_ID INT);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers ( customer_ID INT, 
name VARCHAR(20), 
phone_number INT, email VARCHAR(20), 
address VARCHAR(20), state VARCHAR(20), country VARCHAR(20), zip VARCHAR(20) );

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson (salesperson_ID INT, 
name VARCHAR(20), store VARCHAR(20));

SHOW TABLES