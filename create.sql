CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

Drop table if exists cars;

CREATE TABLE cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vin CHAR(17),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    `year` YEAR,
    color VARCHAR(50)
);

Drop table if exists customers;

create table customers (
    id int auto_increment PRIMARY KEY,
	cust_id int(12),
    cust_name varchar(50),
	cust_phone varchar(12),
    cust_email varchar(50),
    cust_address varchar(50),
    cust_city varchar(50),
    cust_state varchar(50),
    cust_country varchar(50),
    cust_zip char(5)
);

Drop table if exists salespersons;

create table salespersons (
	id int auto_increment PRIMARY KEY,
    staff_id int(6),
    `name` varchar(50),
	store varchar(50)
);


Drop table if exists invoices;

create table invoices (
	id int auto_increment PRIMARY KEY,
    invoice_number int(12),
    `date` DATE,
    car varchar(50),
	customer int,
    salesperson int,

constraint fk_car FOREIGN KEY (vin) REFERENCES cars(vin),
constraint fk_customer FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
constraint fk_salesperson FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id));

Select * from cars;
Select * from customers;
Select * from salespersons;
Select * from invoices;
