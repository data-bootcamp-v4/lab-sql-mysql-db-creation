DROP DATABASE IF EXISTS cars_1;
CREATE DATABASE IF NOT EXISTS cars_1;
USE cars_1;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
id INT AUTO_INCREMENT,
VIN VARCHAR(45) UNIQUE,
manufacturer VARCHAR(45),
model VARCHAR(45), 
year YEAR, 
colour VARCHAR(45),
PRIMARY KEY (id));

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
id INT AUTO_INCREMENT,
staff_ID INT UNIQUE, 
staff_name VARCHAR(70), 
store_location VARCHAR(45),
PRIMARY KEY (id));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
id INT AUTO_INCREMENT, 
customer_ID INT UNIQUE, 
customer_name VARCHAR(70), 
customer_phone VARCHAR(45), 
customer_email VARCHAR(45), 
customer_address VARCHAR(70),
customer_city VARCHAR(45), 
customer_state VARCHAR(45), 
customer_country VARCHAR(45), 
customer_zip VARCHAR(15),
PRIMARY KEY(id));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
invoice_num INT AUTO_INCREMENT, 
invoice_date DATE, 
car INT, 
customer INT, 
salesperson INT,
PRIMARY KEY (invoice_num),
FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (salesperson) REFERENCES salespersons(id));
