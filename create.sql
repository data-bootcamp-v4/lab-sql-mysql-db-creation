CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

create table if not exists cars (
VIN INT NOT NULL AUTO_INCREMENT,
manufacturer varchar(50),
model varchar(50),
car_year int,
color varchar(20),
primary key (VIN)
);
create table if not exists customers (
customer_id INT NOT NULL AUTO_INCREMENT,
customer_name varchar(50),
customer_phone varchar(9),
customer_email varchar(100),
customer_province varchar(50),
customer_country varchar(50) default 'Spain',
customer_postal_code VARCHAR(5),
primary key (customer_id)
);
create table if not exists salespersons (
staff_id INT NOT NULL AUTO_INCREMENT,
staff_name varchar(50),
staff_store varchar(50),
primary key (staff_id)
);
create table if not exists invoices (
invoice_number INT NOT NULL AUTO_INCREMENT,
invoice_date date,
invoice_car int not null,
invoice_customer int not null,
invoice_salesperson int not null,
primary key (invoice_number),
foreign key (invoice_car) references cars(VIN),
foreign key (invoice_customer) references customers(customer_id),
foreign key (invoice_salesperson) references salespersons(staff_id)
);