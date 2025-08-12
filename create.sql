drop table if exists cars;

create table cars (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(50) NOT NULL,
manufacturer VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
year INT NOT NULL,
color VARCHAR(50) NOT NULL
);


drop table if exists customers;

create table customers (
customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Name varchar(50) NOT NULL,
Phone_nr int NOT NULL,
Email VARCHAR(50) NOT NULL,
Address varchar(50) not null,
City VARCHAR(50) NOT NULL,
State varchar(50),
Country varchar(50),
Zipcode varchar(20)
);


drop table if exists invoices;

create table invoices (
invoice_nr int primary key not null,
date date not null,
VIN varchar(50) not null,
customer_ID int not null,
staff_Id int not null);


drop table if exists salesperson;

create table salesperson (
staff_ID int not null primary key,
Name varchar(30),
Store varchar(30)
);
