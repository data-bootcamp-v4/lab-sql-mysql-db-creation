CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE TABLE Cars (
id int auto_increment primary key, 
VIN VARCHAR(20), 
manufacturer VARCHAR(20), 
model VARCHAR(20), 
year year, 
color varchar (20));

Create Table Customers (
id int auto_increment primary key, 
Cust_ID int, 
name varchar(20), 
phone varchar(20), 
email varchar(20), 
address varchar(40), 
city varchar(20), 
state_province varchar(20), 
country varchar(20), 
zip_postal_code int);

create table Salespersons (
id int auto_increment primary key, 
Staff_ID int, 
name varchar(20), 
store varchar(20));

create table Invoice (
id int auto_increment primary key, 
invoice_number varchar(20), 
invoice_date date, 
car int, 
customer int, 
salesperson int,
constraint fk_car foreign key (car) references Cars(id),
constraint fk_customer foreign key (customer) references Customers(id),
constraint fk_salesperson foreign key (salesperson) references Salespersons(id));

-- drop database lab_mysql;
-- SELECT DATABASE();
-- SHOW TABLES;





