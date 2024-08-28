CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
car_id bigint not null auto_increment primary key,
car_vin varchar(20),
car_manufacturer varchar (15),
car_model varchar(20),
car_year char (4),
car_color varchar (10)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
customer_id bigint not null auto_increment primary key,
cust_id bigint not null,
cust_name text,
cust_phone varchar(20),
cust_email varchar (20),
cust_address text,
cust_city varchar(20),
cust_state varchar (20),
cust_country varchar (20),
zip_postal varchar (10)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
salesperson_id bigint not null auto_increment primary key,
staff_id bigint not null,
salesperson_name text,
store text
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
invoice_id bigint not null auto_increment primary key,
invoice_number bigint not null,
date date,
car_id bigint,
customer_id bigint,
salesperson_id bigint,
CONSTRAINT `car_id__1` FOREIGN KEY (`car_id`) REFERENCES  cars(`car_id`),
CONSTRAINT `cust_id__1` FOREIGN KEY (`customer_id`) REFERENCES  customers (`customer_id`),
CONSTRAINT `salesp_id__1` FOREIGN KEY (`salesperson_id`) REFERENCES  salespersons(`salesperson_id`)
);


