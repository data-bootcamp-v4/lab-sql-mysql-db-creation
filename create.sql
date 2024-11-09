CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoices; 
DROP TABLE IF EXISTS salespersons; 
DROP TABLE IF EXISTS customers; 
DROP TABLE IF EXISTS cars; 

CREATE TABLE cars(
id INT auto_increment primary key, 
vin varchar(30) UNIQUE, 
manufacturer varchar(50), 
model varchar(50), 
year SMALLINT, 
color varchar(20)
); 
CREATE TABLE customers(
id INT auto_increment primary key, 
cust_id varchar(10) UNIQUE, 
cust_name varchar(50), 
cust_phone varchar(50), 
cust_email varchar(50),
cust_address varchar(50),
cust_city varchar(50),
cust_state varchar(50), 
cust_country varchar(50),
cust_zipcode varchar(10)
); 

CREATE TABLE salespersons(
id INT auto_increment primary key, 
staff_id varchar(10) UNIQUE, 
name varchar(50), 
store varchar(50)
); 

CREATE TABLE invoices(
id INT auto_increment primary key, 
invoice_number varchar(20) UNIQUE, 
date DATE, 
car_id INT, 
customer_id INT, 
salesperson_id INT,
FOREIGN KEY (car_id) REFERENCES cars(id) ON DELETE CASCADE,
FOREIGN KEY (customer_id) references customers(id), 
FOREIGN KEY (salesperson_id) references salespersons(id)
); 