CREATE DATABASE IF NOT EXISTS lab1_rk_mysql;
USE lab1_rk_mysql;

DROP TABLE IF EXISTS cars;

create table cars (
id_car int not null AUTO_INCREMENT,
vin varchar(30),
manufacturer varchar(30), 
model varchar(30), 
construction_year int, 
color varchar(15),
PRIMARY KEY (id_car)
);

DROP TABLE IF EXISTS customers;

create table customers (
id_customer int not null AUTO_INCREMENT,
customer_number int,
name_customer varchar(50),
phone_number varchar(30),
email varchar(50),
address varchar(50),
city varchar(30),
state varchar(30),
country varchar(30),
postal_code int,
PRIMARY KEY (id_customer)
);

DROP TABLE IF EXISTS salespersons;

create table salespersons (
id_salesperson int not null AUTO_INCREMENT,
staff_id int,
name_salesperson varchar(50),
store varchar(30),
PRIMARY KEY (id_salesperson)
);

DROP TABLE IF EXISTS invoices;

create table invoices(
id_invoice int not null AUTO_INCREMENT,
invoice_number int not null,
invoice_date varchar(10),
id_car int,
id_customer int,
id_salesperson int,
PRIMARY KEY (id_invoice),
CONSTRAINT fk1_cars FOREIGN KEY (id_car) REFERENCES cars(id_car),
CONSTRAINT fk2_customers FOREIGN KEY (id_customer) REFERENCES customers(id_customer),
CONSTRAINT fk2_salespersons FOREIGN KEY (id_salesperson) REFERENCES salespersons(id_salesperson)
);