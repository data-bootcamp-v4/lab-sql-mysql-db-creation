create database if not exists lab_mysql;
use lab_mysql;

drop table if exists cars;
create table cars (id int auto_increment primary key, vin varchar(17), manufacturer varchar(50), model varchar(50), year int, color varchar(30));
drop table if exists customers;
create table customers (id int auto_increment primary key, cust_id int, cust_name varchar(100), cust_phone varchar(20), cust_email varchar(100), cust_address varchar(150), cust_city varchar(50), cust_state varchar(50), cust_country varchar(50), cust_zipcode varchar(20));
drop table if exists salespersons;
create table salespersons (id int auto_increment primary key, staff_id int, name varchar(100), store varchar(50));
drop table if exists invoices;
create table invoices (id int auto_increment primary key, invoice_number int, sale_date date, car_id int, customer_id int, salesperson_id int, foreign key (car_id) references cars(id), foreign key (customer_id) references customers(id), foreign key (salesperson_id) references salespersons(id));

