-- Active: 1721290975934@@127.0.0.1@3306@Prueba
CREATE DATABASE IF NOT EXISTS lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (car_id INT,
vin VARCHAR (30),
manufacturer VARCHAR (50),
model VARCHAR (30),
year_car INT,
colour VARCHAR (20)
);
DROP TABLE IF EXISTS costumers;
CREATE TABLE costumers (cost_id INT,
name VARCHAR (30),
phone VARCHAR (30),
email VARCHAR(30),
address_cust VARCHAR(30),
city VARCHAR (20),
state_province VARCHAR(50),
country VARCHAR (20),
zip_code VARCHAR (20)
);
DROP TABLE IF EXISTS sales_person;
CREATE TABLE sales_person (staff_id INT,
name VARCHAR (20),
store VARCHAR (20)
);
DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice (inv_number INT,
date DATE,
car_id INT,
cost_id INT,
staff_id INT
);