CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_id INT, manufacturer VARCHAR(45), model VARCHAR(45), year INT, color VARCHAR(45));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (customer_id INT, name VARCHAR(45), phone_number VARCHAR(45), email VARCHAR(45), adress VARCHAR(45),
city VARCHAR(45), state_province VARCHAR(45), country VARCHAR(45), postal_code VARCHAR(10));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (invoice_number INT, date DATE, car VARCHAR(45), customer VARCHAR(45), sales_person VARCHAR(45));

DROP TABLE IF EXISTS sales_person;
CREATE TABLE sales_person (staff_id INT, name VARCHAR(45), store VARCHAR(45));


