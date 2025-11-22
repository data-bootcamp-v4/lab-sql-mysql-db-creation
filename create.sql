CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

#create tables
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	id int PRIMARY key,
	vin VARCHAR(20),
	manufacturer varchar(30),
	model varchar(30),
	year year,
	color varchar(30));

DROP TABLE IF EXISTS customers;
    
CREATE TABLE customers (
	id int PRIMARY key,
	cust_id int,
	cust_name varchar(100),
	cust_phone varchar(20),
	cust_email varchar(100),
	cust_addres varchar(500),
    cust_city varchar(100),
    cust_state varchar(100),
    cust_country varchar(100),
    cust_zipcode varchar(10)); 

DROP TABLE IF EXISTS salespersons;

 CREATE TABLE salespersons (
	id int PRIMARY key,
	staff_id int,
	name varchar(100),
	store varchar(100));

DROP TABLE IF EXISTS invoice;    

 CREATE TABLE invoice (
	id int PRIMARY key,
	invoice_number int,
	date date,
	car int,
    customer int,
    salesperson int);
    