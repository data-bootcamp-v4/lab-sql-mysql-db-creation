DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars(
    id int auto_increment primary key,
    vin varchar(17) not null,
manufacturer varchar(50) ,
model varchar(50),
year int,
color varchar(30)
);
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
    id int AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100),
    phone varchar(100),
    email varchar(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    cod_postal VARCHAR(20)
    );
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(
id int auto_increment primary key,
staff_id varchar(20) not null unique,
name varchar(100),
store varchar(100)
);
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    date DATE,
    car_id INT,
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
  
);
