CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (vin VARCHAR(40), manufacturer VARCHAR(40), model VARCHAR(40), car_year VARCHAR(5), color VARCHAR(40), PRIMARY KEY (vin));

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (staff_id INT, staff_name VARCHAR(50), store VARCHAR(50), PRIMARY KEY (staff_id));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (invoice_number INT, invoice_date VARCHAR(50), car VARCHAR(50), customer INT, salesperson INT, PRIMARY KEY (invoice_number));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INT, customer_name VARCHAR(50), phone_number VARCHAR(50), email VARCHAR(50), address VARCHAR(50), city VARCHAR(50), state VARCHAR(50), country VARCHAR(50), zipcode INT, PRIMARY KEY (customer_id));

