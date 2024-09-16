CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars, customers, salespersons, invoices;

CREATE TABLE cars(
	id int auto_increment primary key,
	vin varchar(40) not null,
    manufacturer varchar(100),
    model varchar(100),
    car_year year,
    color varchar(50)
);
 
 CREATE TABLE customers(
	id int auto_increment primary key,
	cust_id int(6),
    cust_name varchar(100),
	cust_phone varchar(20),
    cust_email varchar(100),
    cust_address varchar(100),
    cust_city varchar(100),
    cust_state varchar(100),
    cust_country varchar(100),
    cust_zipcode varchar(10)
);
 
CREATE TABLE salespersons(
	id int auto_increment primary key,
	staff_id int(6),
    staff_name varchar(100),
    store varchar(100)
);

CREATE TABLE invoices(
	id int auto_increment primary key,
	invoice_num int,
    invoice_date date,
    car int(5),
    customer int(5),
    salesperson int(5),
	constraint invoices_ibfk_1 foreign key (car) references cars(id),
    constraint invoices_ibfk_2 foreign key (customer) references customers(id),
    constraint invoices_ibfk_3 foreign key (salesperson) references salespersons(id)
);
