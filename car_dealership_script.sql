CREATE DATABASE IF NOT EXISTS lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (car_id INT(10) UNSIGNED NOT NULL UNIQUE, manufacturer VARCHAR(20), year_built DATE, colour VARCHAR(5));

DESCRIBE cars;

CREATE TABLE customer (customer_id INT(10) UNSIGNED NOT NULL UNIQUE, name VARCHAR(20), phone_number INT(10), email VARCHAR(5), 
			address VARCHAR(20), city VARCHAR(20), state VARCHAR(20), city VARCHAR(20), state VARCHAR(20));

CREATE TABLE salesperson (staff_id INT(10) UNSIGNED NOT NULL UNIQUE, name VARCHAR(20), store VARCHAR(5));

CREATE TABLE invoice (invoice_number INT(10) UNSIGNED NOT NULL UNIQUE, date DATE, car VARCHAR(5), customer VARCHAR(5), salesperson VARCHAR(5));
