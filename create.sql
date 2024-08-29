DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS lab_mysql.cars;
CREATE TABLE lab_mysql.cars (
vehicle_iden_number VARCHAR(255) NOT NULL PRIMARY KEY,
manufacturer VARCHAR(255) NOT NULL,
model VARCHAR(255) NOT NULL,
year YEAR NOT NULL,
color VARCHAR(255)
);

DROP TABLE IF EXISTS lab_mysql.customer;
CREATE TABLE lab_mysql.customer (
customer_id BIGINT NOT NULL PRIMARY KEY ,
name   VARCHAR(255) NOT NULL,
phone_number VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
city VARCHAR(255) NOT NULL,
state VARCHAR(255) NOT NULL,
country VARCHAR(255) NOT NULL,
postal_code VARCHAR (255) NOT NULL
);

DROP TABLE IF EXISTS lab_mysql.salespersons;
CREATE TABLE lab_mysql.salespersons(
staff_id BIGINT NOT NULL PRIMARY KEY,
name VARCHAR (255),
store VARCHAR(255)
);

DROP TABLE IF EXISTS lab_mysql.invoices;
CREATE TABLE lab_mysql.invoices(
invoice_number BIGINT NOT NULL PRIMARY KEY,
date DATE NOT NULL,
vehicle_iden_number varchar(255) NOT NULL,
customer_id BIGINT NOT NULL,
staff_id BIGINT NOT NULL,
 FOREIGN KEY (vehicle_iden_number) REFERENCES cars(vehicle_iden_number),
 FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
 FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);
