CREATE DATABASE IF NOT EXISTS lab_mysql;

use lab_mysql;

#create tables

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
	id int PRIMARY key,
	vin VARCHAR(20),
	manufacturer VARCHAR(30),
	model VARCHAR(30),
	year year,
    color varchar(20)
 );
 
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	id int PRIMARY key,
	cust_id int, 
	cust_name VARCHAR(100),
	cust_phone VARCHAR(14),
	cust_email VARCHAR(100),
    cust_address VARCHAR(500),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(10)
);

DROP TABLE IF EXISTS salesperson;
CREATE TABLE salesperson (
	id int PRIMARY key,
	staff_id int, 
	name VARCHAR(100),
    store VARCHAR(100)
);

DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice (
	id int PRIMARY key,
	invoice_number int, 
	date date,
    car int,
    customer int,
    salesperson int
);
    
    



