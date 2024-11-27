CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE cars(
ID INT AUTO_INCREMENT,
VIN VARCHAR(45) NOT NULL, 
manufacturer VARCHAR(45) NOT NULL,
model VARCHAR(45) NOT NULL,
year year,
color  VARCHAR(45) NOT NULL, 
PRIMARY KEY (ID)
);

CREATE TABLE Customers (
ID INT AUTO_INCREMENT,
customer_ID INT, 
cust_name VARCHAR(45) NOT NULL,
cust_phone VARCHAR(45),
cust_email VARCHAR(45),
 cust_address VARCHAR(200) NOT NULL,
 cust_city VARCHAR(200) NOT NULL,
 cust_state VARCHAR(200) NOT NULL,
 cust_country VARCHAR(200) NOT NULL,
 cust_zipcode INT,
PRIMARY KEY (ID)
);

CREATE TABLE Salespersons  (
ID INT AUTO_INCREMENT, 
staff_ID INT, 
name VARCHAR(45) NOT NULL,
store varchar(45) not null,
PRIMARY KEY (ID)
);

CREATE TABLE Invoices (
ID INT AUTO_INCREMENT  PRIMARY KEY,
invoice_number INT,
date DATE,
car INT,
customer INT,
salesperson INT,
FOREIGN KEY (car) REFERENCES CARS (ID),
FOREIGN KEY (customer) REFERENCES CUSTOMERS (ID),
FOREIGN KEY (salesperson) REFERENCES salespersons (ID)
);




