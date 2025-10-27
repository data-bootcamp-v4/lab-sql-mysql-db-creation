create database if not exists lab_mysql;
use lab_mysql;

drop table if exists cars;
create table cars (
 car_id int auto_increment primary key, 
 VIN varchar(255),
 manufacturer varchar(255),
 model varchar(255),
 year int,
 color varchar(255)); 
 
 drop table if exists customers;
create table customers (
customer_auto_id INT AUTO_INCREMENT PRIMARY KEY,
 customer_id int ,
 name varchar(255),
 phone_number varchar(255),
 email varchar(255),
 adress varchar(255),
 city varchar(255),
 state_province varchar(255) ); 
 
 drop table if exists salespersons;
create table salespersons (
staff_auto_id INT AUTO_INCREMENT PRIMARY KEY,
 staff_id int ,
 name varchar(255),
 store varchar(255)
 ); 
 
 drop table if exists invoices;
create table invoices (
invoice_id int auto_increment primary key,
 invoice_number int ,
 date date,
 car_id int,
 customer_auto_id int,
 staff_auto_id int,
  FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_auto_id) REFERENCES customers(customer_auto_id),
    FOREIGN KEY (staff_auto_id) REFERENCES salespersons(staff_auto_id)); 