CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS car, customer, salesperson, invoice;

CREATE TABLE customer (
customer_id INT NOT NULL auto_increment primary key, 
name CHAR(50),
phone CHAR(50),
email CHAR(50),
address CHAR(50),
city CHAR(50),
state CHAR(50),
country CHAR(50),
postal_code INT
);

CREATE TABLE car (
car_id INT NOT NULL auto_increment primary key,
vin CHAR(50),
manufacturer CHAR(50),
model CHAR(50),
car_year INT,
color CHAR(50)
);

CREATE TABLE salesperson(
staff_id INT NOT NULL auto_increment primary key,
name CHAR(50),
store CHAR(59)
);

CREATE TABLE invoice(
id INT NOT NULL auto_increment primary key,
invoice_nr INT NOT NULL,
customer_id INT NOT NULL,
car_id INT NOT NULL,
staff_id INT NOT NULL,
invoice_date DATE,
foreign key (customer_id) references customer(customer_id),
foreign key (car_id) references car(car_id),
foreign key (staff_id) references salesperson(staff_id)
);
