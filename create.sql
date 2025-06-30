CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT,
  cust_id INT,
  cust_name VARCHAR(25),
  cust_phone CHAR(12),
  cust_email VARCHAR(30),
  cust_address VARCHAR(40),
  cust_city VARCHAR(20),
  cust_state VARCHAR(20),
  cust_country VARCHAR(20),
  cust_zipcode CHAR(10),
  PRIMARY KEY (customer_id)
);
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
  salesperson_id INT AUTO_INCREMENT,
  staff_id INT,
  name VARCHAR(25),
  store VARCHAR(25),
  PRIMARY KEY (salesperson_id)
);


DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  car_id INT AUTO_INCREMENT,
  vin VARCHAR(25),
  manufacturer VARCHAR(25),
  model VARCHAR(25),
  year_column YEAR,
  color VARCHAR(10),
  PRIMARY KEY (car_id)
);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
  invoice_id INT AUTO_INCREMENT,
  invoice_number INT,
  date_column DATE,
  car INT,
  customer INT,
  salesperson INT,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (car) REFERENCES cars(car_id),
  FOREIGN KEY (customer) REFERENCES customers(customer_id),
  FOREIGN KEY (salesperson) REFERENCES salespersons(salesperson_id)
);