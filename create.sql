-- DROP DATABASE lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;


CREATE TABLE cars (
	id INT,
	vin VARCHAR(50),
	manufacturer VARCHAR(50),
	model VARCHAR(50),
	year INT,
	color  VARCHAR(50),
    PRIMARY KEY (id)
);


CREATE TABLE Customers(
id	INT ,
cust_id	INT,
cust_name	VARCHAR(50),
cust_phone	VARCHAR(50),
cust_email	 VARCHAR(50),
cust_address	 VARCHAR(50),
cust_city	VARCHAR(50),
cust_state	VARCHAR(50),
cust_country	VARCHAR(50),
cust_zipcode INT,
PRIMARY KEY(id)
);


CREATE TABLE Salespersons(
id INT,
staff_id INT,
name VARCHAR(50),
store VARCHAR(50),
PRIMARY KEY(id)
);



CREATE TABLE Invoices(
id INT,
invoice_number INT,
date DATE,
car INT,
customer INT,
salesperson INT,
PRIMARY KEY(id),
FOREIGN KEY(car) REFERENCES Cars(id),
FOREIGN KEY(customer) REFERENCES Customers(id),
FOREIGN KEY(salesperson) REFERENCES Salespersons(id)
);