SHOW DATABASES;

DROP DATABASE IF EXISTS lab_mysql;

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
car_id integer PRIMARY KEY auto_increment,
 vin varchar(17),
 manufacturer varchar(10),
 model varchar(17),
 year_ year, 
 color varchar(8)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  customer_id integer PRIMARY KEY auto_increment,
  cust_name varchar(18),
  cust_phone varchar(20),
  cust_email varchar(45),
  cust_address varchar(25),
  cust_city varchar(20),
  cust_state varchar(20),
  cust_country varchar(20),
  cust_zipcode integer
);


CREATE TABLE salespersons (
  salesperson_id integer PRIMARY KEY AUTO_INCREMENT,
  name varchar(15),
  store varchar(20)
);


DROP TABLE IF EXISTS invoices;


CREATE TABLE invoices (
  invoice_id integer PRIMARY KEY AUTO_INCREMENT,
  invoices_number integer,
  date date,
  car_id integer,
  customer_id integer,
  salesperson_id integer,
  FOREIGN KEY (car_id) REFERENCES cars(car_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (salesperson_id) REFERENCES salespersons(salesperson_id)
);

