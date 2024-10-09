CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (VIN INT UNSIGNED NOT NULL UNIQUE,
manufacturer VARCHAR(20), model VARCHAR(20), year INT, color VARCHAR(20));
       
       
DROP TABLE IF EXISTS customer;
CREATE TABLE customer (customer_id INT UNSIGNED NOT NULL UNIQUE,
name VARCHAR(20), phone INT(20), email VARCHAR(20), address VARCHAR(45),
city VARCHAR(20), sate VARCHAR(20), country VARCHAR(20),
zip INT(20));
       
       
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (staff_id INT, name VARCHAR(20),
store VARCHAR(20));
       
       
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (invoice_nr INT, date DATE, car VARCHAR(20),
cutomer VARCHAR(20), salesperson VARCHAR(20));

DESCRIBE cars;