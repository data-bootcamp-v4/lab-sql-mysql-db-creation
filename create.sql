CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salesperson;

CREATE TABLE salesperson (
staff_id INT PRIMARY KEY,
salesperson VARCHAR(45),
store VARCHAR(45));

CREATE TABLE cars (
vin int primary key,
manugacturer VARCHAR(45),
`year` int,
color varchar(45));

CREATE TABLE customer(
customer_id INT,
customer_name varchar(45),
phone_number INT,
email varchar(45),
address varchar(45),
city varchar(45),
state_province varchar(45),
country varchar(45),
postal_code varchar(45));

CREATE TABLE invoices (
invoice_number INT PRIMARY KEY,
`date` DATETIME,
customer_name varchar(45),
salesperson VARCHAR(45),
VIN INT,
CONSTRAINT fk_customer FOREIGN KEY (customer_name) REFERENCES customer(customer_name),
CONSTRAINT fk_salesperson FOREIGN KEY (salesperson) REFERENCES salesperson(salesperson),
CONSTRAINT fk_vin FOREIGN KEY (vin) REFERENCES cars(vin));
    
