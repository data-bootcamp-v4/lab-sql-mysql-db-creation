CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;


CREATE TABLE cars (
  car_id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(17) NOT NULL UNIQUE,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  year YEAR NOT NULL,
  color VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
  customer_pk INT AUTO_INCREMENT PRIMARY KEY,
  customer_id VARCHAR(20) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  email VARCHAR(100),
  address VARCHAR(150),
  city VARCHAR(50),
  state_province VARCHAR(50),
  country VARCHAR(50),
  postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
  salesperson_pk INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(20) NOT NULL UNIQUE,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(100) NOT NULL
);

CREATE TABLE invoices (
  invoice_id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number VARCHAR(20) NOT NULL UNIQUE,
  invoice_date DATE NOT NULL,
  car_id INT NOT NULL,
  customer_pk INT NOT NULL,
  salesperson_pk INT NOT NULL,
  FOREIGN KEY (car_id) REFERENCES cars(car_id),
  FOREIGN KEY (customer_pk) REFERENCES customers(customer_pk),
  FOREIGN KEY (salesperson_pk) REFERENCES salespersons(salesperson_pk)
);
