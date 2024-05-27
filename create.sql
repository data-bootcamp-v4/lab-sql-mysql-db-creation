CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
    VIN INT, 
    manufacturer VARCHAR(20),
	car_model VARCHAR(20), 
    car_year INT, 
    car_color VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS customers (
    customerID INT, 
    c_name VARCHAR(20),
	c_phone INT, 
    c_email VARCHAR(20), 
    c_address VARCHAR(20),
    c_city VARCHAR(20),
    c_state VARCHAR(20),
    c_country VARCHAR(20),
    c_zip INT
);

CREATE TABLE IF NOT EXISTS salesperson (
    staffID INT,
    s_name VARCHAR(20),
    s_store VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS invoices (
    inv_number INT,
    inv_date DATETIME,
    VIN INT,
    customerID INT,
    staffID INT
);

ALTER TABLE cars
MODIFY COLUMN VIN VARCHAR(20);

ALTER TABLE invoices
MODIFY COLUMN VIN VARCHAR(20);

ALTER TABLE cars
ADD COLUMN cars_id INT;

ALTER TABLE customers
ADD COLUMN c_id INT;

ALTER TABLE invoices
ADD COLUMN inv_id INT;

ALTER TABLE salesperson
ADD COLUMN s_id INT;

ALTER TABLE customers
MODIFY COLUMN c_phone VARCHAR(20);

ALTER TABLE customers
MODIFY COLUMN c_address VARCHAR(50);

ALTER TABLE invoices
MODIFY COLUMN inv_date DATETIME;

ALTER TABLE invoices
DROP COLUMN customerID,
DROP COLUMN staffID,
DROP COLUMN VIN;

ALTER TABLE invoices
ADD COLUMN c_id INT,
ADD COLUMN s_id INT,
ADD COLUMN car_id INT;