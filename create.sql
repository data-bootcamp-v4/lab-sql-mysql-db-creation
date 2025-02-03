CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (carID VARCHAR(11), VIN VARCHAR(17), manufacturer VARCHAR(20), model VARCHAR(20), year YEAR, color VARCHAR(20));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(id VARCHAR(11), customerID VARCHAR(11), name VARCHAR(20), phone_number VARCHAR(20), email VARCHAR(50), address VARCHAR(50), city VARCHAR(20), state_province VARCHAR(20), country VARCHAR(20), zip_postal_code VARCHAR(5));

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(id VARCHAR(11), staffID VARCHAR(11), name VARCHAR(20), store VARCHAR(20));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(id VARCHAR(11),invoiceID VARCHAR(11), date DATE, carID VARCHAR(11), customerID VARCHAR(11), staffID VARCHAR(11));

DROP TABLE cars;