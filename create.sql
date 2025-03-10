CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (id INT AUTO_INCREMENT PRIMARY KEY, vin VARCHAR(20), manufacturer VARCHAR(20), model VARCHAR(20), color VARCHAR(15));

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (id INT AUTO_INCREMENT PRIMARY KEY, customer_id VARCHAR(20), name VARCHAR(20), phone_number VARCHAR(20), email VARCHAR(40),
address VARCHAR(60), city VARCHAR(20), state VARCHAR(20), country VARCHAR(15), postal_code VARCHAR(10));

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (id INT AUTO_INCREMENT PRIMARY KEY, staff_id VARCHAR(15), name VARCHAR(20), store VARCHAR(20));

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (id INT AUTO_INCREMENT PRIMARY KEY, invoice_number VARCHAR(15), date DATE, car VARCHAR(20), customer VARCHAR(20), salesperson VARCHAR(20));


