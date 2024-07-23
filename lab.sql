-- Active: 1721290976752@@127.0.0.1@3306@dealership
CREATE DATABASE dealership;
USE dealership;
CREATE TABLE cars (vin VARCHAR(64), manufacturer VARCHAR (64), model VARCHAR(64), car_year INT, color VARCHAR(32));
CREATE TABLE customers (customer_ID INT, name VARCHAR(32), phone VARCHAR(32), email VARCHAR(32), address_cust VARCHAR(64), city VARCHAR(64), state_province VARCHAR(32), country VARCHAR(32),zip_code INT);
ALTER TABLE cars ADD id INT;
CREATE TABLE salespersons (staff_ID INT, name varchar(32), store VARCHAR (32));
CREATE TABLE invoice (invoice_number INT, date DATE, car_id INT, customer_ID INT, staff_ID INT);


