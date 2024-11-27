DROP DATABASE lab_mysql;

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


CREATE TABLE Cars (
id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(30),
model VARCHAR(30),
manufacturer VARCHAR (30),
Colors VARCHAR(100),
year YEAR
);


CREATE TABLE Customers (
id INT AUTO_INCREMENT PRIMARY KEY,
cust_id VARCHAR(30),
cust_name VARCHAR(30),
cust_phone VARCHAR(100),
cust_email VARCHAR(100),
cust_adress VARCHAR(100),
cust_city VARCHAR(100),
cust_state VARCHAR(100),
cust_country VARCHAR(100),
cust_zipcode INT
);

CREATE TABLE Salespersons (
id INT AUTO_INCREMENT PRIMARY KEY,
staff_id VARCHAR(100),
name VARCHAR(100),
store VARCHAR(100)
);

CREATE TABLE Invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number VARCHAR(100),
customer VARCHAR(100),
salesperson VARCHAR(100),
car VARCHAR (100),
date DATE,
FOREIGN KEY (id) REFERENCES Cars(id),
FOREIGN KEY (id) REFERENCES Customers(id),
FOREIGN KEY (id) REFERENCES Salespersons(id)
);

