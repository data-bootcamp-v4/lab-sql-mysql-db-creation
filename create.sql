CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
id int PRIMARY KEY AUTO_INCREMENT, 
vehicle_identification_number_VIN varchar(40), 
manufacturer text, 
model varchar (40), 
year year, 
color text 
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers ( 
id int PRIMARY KEY AUTO_INCREMENT,
customer_ID varchar(40), 
name text, 
phone_number varchar(40), 
email varchar(40), 
address varchar(40), 
city text, 
state_province text, 
country text, 
zip_postal varchar(40) 
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
id int PRIMARY KEY AUTO_INCREMENT, 
staff_ID varchar(40), 
name text, 
store_company varchar(40) 
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices ( 
id int PRIMARY KEY AUTO_INCREMENT,
invoice_number varchar(40), 
date date, 
car text, 
customer varchar(40), 
salesperson_related varchar(40) 
);
