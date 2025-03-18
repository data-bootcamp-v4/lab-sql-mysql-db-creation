CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id VARCHAR(20),
    VIN VARCHAR(20),
    manufacturer VARCHAR(20),
    model VARCHAR(20),
    year VARCHAR(20),
    color VARCHAR(20)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
	id VARCHAR(20),
    number VARCHAR(20),
    date DATE,
    car VARCHAR(20),
    customer VARCHAR(20),
    salesperson VARCHAR(20)
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	id VARCHAR(20),
    cust_id VARCHAR(20),
	cust_name VARCHAR(20),
	cust_phone VARCHAR(20),
	cust_email VARCHAR(20),
	cust_address VARCHAR(100),
	cust_city VARCHAR(20),
	cust_state VARCHAR(20),
    cust_country VARCHAR(20),
    cust_zipcode VARCHAR(20)
);

DROP TABLE IF EXISTS salespeople;

CREATE TABLE salespeople (
	id VARCHAR(20),
    staff_id VARCHAR(20),
    name VARCHAR(20),
    store VARCHAR(20)
);

