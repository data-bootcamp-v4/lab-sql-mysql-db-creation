CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (id int not null auto_increment primary key,
	vin varchar(25) not null,
	manufacturer varchar(25) not null,
	model varchar(25) not null, 
	year year not null,
	color varchar(25)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (id int not null auto_increment primary key,
	staff_id bigint not null,
    name varchar(25) not null,
    store varchar(25) not null
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (id int not null auto_increment primary key,
	cust_id int not null, cust_name varchar(25) not null, 
	cust_phone varchar(25), cust_email varchar(40), cust_address char(50),
	cust_city varchar(25), cust_state varchar(25), cust_country varchar(25), cust_zipcode varchar(25)
);

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
	id int not null auto_increment primary key,
	invoice_number bigint not null,
	date date not null,
    car int not null,
	customer int not null,
	salesperson int not null,
    CONSTRAINT fk_car FOREIGN KEY (car) REFERENCES cars(id),
    CONSTRAINT fk_customer FOREIGN KEY (customer) REFERENCES customers(id),
    CONSTRAINT fk_salesperson FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);