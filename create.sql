#Create database

CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE cars(
cars_id int AUTO_INCREMENT PRIMARY KEY,
vin varchar(100),
manufacturer varchar(100),
model varchar(100),
year int(50),
color varchar(50)
);

CREATE TABLE customers(
id int AUTO_INCREMENT PRIMARY KEY,
customers_id int(50),
cust_name int(50),
cust_email varchar(100),
cust_address varchar(100),
cust_city varchar (100),
cust_state varchar (100),
cust_country varchar(100),
cust_zipcode int(50)
);

DROP TABLE IF EXISTS sales_persons;

CREATE TABLE sales_persons(
sales_id int AUTO_INCREMENT PRIMARY KEY,
staff_id int(50),
sales_name varchar(100), 
store varchar (100)
);

CREATE TABLE invoices(
invoices_id int AUTO_INCREMENT PRIMARY KEY,
invoice_number int (100),
invoice_date varchar (100),
car int(50) NOT NULL,
customer int(50) NOT NULL,
salesperson int(50) NOT NULL
);





