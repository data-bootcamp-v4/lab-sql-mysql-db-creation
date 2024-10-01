CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;
#DROP TABLE IF EXISTS cars;

-- used ID as Primary Keys because I couldn't use Auto-increment for non primary key columns --
CREATE TABLE cars (
ID int NOT NULL AUTO_INCREMENT,
VIN CHAR(20) NOT NULL,
manufacturer VARCHAR(30),
model VARCHAR(30),
year DATE,
color VARCHAR(20),
PRIMARY KEY (ID) 
);

#DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
ID int NOT NULL AUTO_INCREMENT,
customer_ID CHAR(20), 
name VARCHAR(30), 
phone_number CHAR(20), 
email VARCHAR(30), 
address VARCHAR(50), 
city VARCHAR(30), 
state_province VARCHAR(50), 
country VARCHAR(30), 
zip_postal_code VARCHAR(30),
PRIMARY KEY (ID)
);

#DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
ID int NOT NULL AUTO_INCREMENT, 
staff_ID CHAR(20), 
name VARCHAR(30), 
store VARCHAR(30),
PRIMARY KEY (ID)
);

#DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
ID int NOT NULL AUTO_INCREMENT, 
invoice_number CHAR(20), 
date DATE, 
VIN CHAR(20), 
customer_ID CHAR(20), 
staff_ID CHAR(20),
PRIMARY KEY (ID)
);

