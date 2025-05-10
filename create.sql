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
  color VARCHAR(50)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT UNIQUE,
  cust_name VARCHAR(100),
  cust_phone VARCHAR(20),
  cust_email VARCHAR(100),
  cust_address VARCHAR(150),
  cust_city VARCHAR(50),
  cust_state VARCHAR(50),
  cust_country VARCHAR(50),
  cust_zipcode VARCHAR(10)
);


DROP TABLE IF EXISTS Salespersons;
CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(5) UNIQUE,
  name VARCHAR(100),
  store VARCHAR(50)
);

DROP TABLE IF EXISTS Invoices;
CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number BIGINT UNIQUE,
  date DATE,
  car INT,
  customer INT,
  salesperson INT,
  FOREIGN KEY (car) REFERENCES cars(id),
  FOREIGN KEY (customer) REFERENCES customers(id),
  FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);