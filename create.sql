-- create.sql
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop in FK-safe order
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS sales_person;
SET FOREIGN_KEY_CHECKS = 1;

-- Customers
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  customer_phone VARCHAR(30),
  customer_email VARCHAR(100),
  customer_address VARCHAR(200),
  customer_city VARCHAR(100),
  customer_state VARCHAR(100),
  customer_country VARCHAR(100),
  customer_zipcode VARCHAR(20)
);

-- Sales person
CREATE TABLE sales_person (
  staff_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(100) NOT NULL
);

-- Cars
CREATE TABLE cars (
  car_id INT PRIMARY KEY,
  vin VARCHAR(20) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  year YEAR NOT NULL,
  color VARCHAR(20) NOT NULL
);

-- Invoices (central table)
CREATE TABLE invoices (
  invoice_id INT PRIMARY KEY,
  car_id INT NOT NULL,
  customer_id INT NOT NULL,
  staff_id INT NOT NULL,
  invoice_nr INT NOT NULL,
  invoice_date DATE NOT NULL,
  CONSTRAINT fk_invoices_car
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
  CONSTRAINT fk_invoices_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  CONSTRAINT fk_invoices_staff
    FOREIGN KEY (staff_id) REFERENCES sales_person(staff_id)
);

