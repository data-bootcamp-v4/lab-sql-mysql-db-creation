-- Lab MySQL - creation de la base de donnée
-- tables : cars, customers, salespersons, invoices

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

drop table if exists invoices;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(20) NOT NULL,
  manufacturer VARCHAR(50),
  model VARCHAR(50),
  year INT,
  color VARCHAR(20)
);

DROP TABLE IF EXISTS customers;

create table customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT NOT NULL,
  cust_name VARCHAR(100) NOT NULL,
  cust_phone VARCHAR(50),
  cust_email VARCHAR(100),
  cust_address VARCHAR(255),
  cust_city VARCHAR(50),
  cust_state VARCHAR(50),
  cust_country VARCHAR(50),
  cust_zipcode INT
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id INT NOT NULL,
  name VARCHAR(100),
  store VARCHAR(50)
);

-- table des factures, elle est liée au 3 autres tables
CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number INT NOT NULL,
  date DATE,
  car_id INT,
  customer_id INT,
  salesperson_id INT,
  FOREIGN KEY (car_id) REFERENCES cars(id),
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
