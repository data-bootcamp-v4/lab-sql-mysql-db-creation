CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS invoices;

CREATE TABLE cars (
id int,
vin char(17),
manufacturer varchar(20),
model varchar(30),
year char(4),
color varchar(10)
);

CREATE TABLE customers (
id int,
cust_id char(5),
cust_name varchar(20),
cust_phone varchar(20),
cust_email varchar(10),
cust_address text,
cust_city varchar(10),
cust_state varchar(13),
cust_country varchar(20),
cust_zipcode char(5)
);

CREATE TABLE salespersons (
id int,
staff_id int,
name varchar(20),
store varchar(15)
);

CREATE TABLE invoices(
id int,
invoice_number char(9),
model varchar(30),
date date,
car varchar(10),
customer int,
salesperson varchar(1)
);

