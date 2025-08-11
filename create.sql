# create database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

# create tables and relationships
drop table if exists Invoices;
CREATE TABLE Invoices (
    Auto_ID INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number CHAR(10) UNIQUE NOT NULL,
    date DATE NOT NULL,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES Cars(Auto_ID),
    FOREIGN KEY (customer) REFERENCES Customers(Auto_ID),
    FOREIGN KEY (salesperson) REFERENCES Salesperson(Auto_ID)
);

drop table if exists Customers;
CREATE TABLE Customers(
Auto_ID INT AUTO_INCREMENT PRIMARY KEY,
ID CHAR(10) UNIQUE NOT NULL,
name VARCHAR(30),
phone VARCHAR(30),
address VARCHAR(50),
email VARCHAR(30),
zip_code VARCHAR(10),
state VARCHAR(30),
country VARCHAR(20)
);



drop table if exists Salesperson;
CREATE TABLE Salesperson(
Auto_ID INT AUTO_INCREMENT PRIMARY KEY,
staff_ID CHAR(10) UNIQUE NOT NULL,
staff_name VARCHAR(30),
store VARCHAR(20)
);


drop table if exists Cars;
CREATE TABLE Cars(
Auto_ID INT AUTO_INCREMENT PRIMARY KEY,
VIN CHAR(10) UNIQUE NOT NULL,
manufacture VARCHAR(20),
production_year YEAR,
model VARCHAR(20),
color VARCHAR(10)
);
