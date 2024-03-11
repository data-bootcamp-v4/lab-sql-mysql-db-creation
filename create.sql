CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS sales_persons;
CREATE TABLE sales_persons (id INT(5) AUTO_INCREMENT, staff_id INT(5), name VARCHAR(20),
store VARCHAR(20), PRIMARY KEY (staff_id), KEY (id));

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (id INT(5) AUTO_INCREMENT, car_vin VARCHAR(25), manufacturer VARCHAR(15),
model VARCHAR(25), year_ YEAR, cars_color VARCHAR(20),PRIMARY KEY (id));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (id INT(5) AUTO_INCREMENT,invoice_number VARCHAR(20),date_ DATE,
car_vin VARCHAR(20), customer_id INT(5), name VARCHAR(50), staff_id INT(5),PRIMARY KEY (invoice_number), KEY (id));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (id INT(5) AUTO_INCREMENT, customer_id INT(6), name VARCHAR(50),
phone_number VARCHAR(25),email VARCHAR(50),address VARCHAR (50),city VARCHAR(30),
state_province VARCHAR(25),country VARCHAR(30),zip_postal_code CHAR(5),
car_vin VARCHAR(20),PRIMARY KEY (customer_id), KEY (id));
