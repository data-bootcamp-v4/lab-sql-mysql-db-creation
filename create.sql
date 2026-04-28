CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
SHOW TABLES;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(50),
  manufacturer VARCHAR(50),
  model VARCHAR(50),
  year INT,
  color VARCHAR(30)
);

SHOW TABLES;

SHOW COLUMNS FROM cars;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT,
  cust_name VARCHAR(100),
  cust_phone VARCHAR(30),
  cust_email VARCHAR(100),
  cust_address VARCHAR(150),
  cust_city VARCHAR(50),
  cust_state VARCHAR(50),
  cust_country VARCHAR(50),
  cust_zipcode VARCHAR(20)
);

SHOW TABLES;

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(10),
  name VARCHAR(100),
  store VARCHAR(50)
);

SHOW TABLES;

DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number INT,
  date DATE,
  car_id INT,
  customer_id INT,
  salesperson_id INT,
  FOREIGN KEY (car_id) REFERENCES cars(id),
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

SHOW TABLES;






