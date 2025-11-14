-- create.sql
-- Create database and all tables from scratch

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop in child→parent order (disable FKs while dropping)
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;
SET FOREIGN_KEY_CHECKS = 1;

-- Parent tables
CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(32) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(80) NOT NULL,
  year YEAR NOT NULL,
  color VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT NOT NULL,
  cust_name VARCHAR(100) NOT NULL,
  cust_phone VARCHAR(30),
  cust_email VARCHAR(255),
  cust_address VARCHAR(255),
  cust_city VARCHAR(100),
  cust_state VARCHAR(100),
  cust_country VARCHAR(100),
  cust_zipcode VARCHAR(20)
) ENGINE=InnoDB;

CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(100)
) ENGINE=InnoDB;

-- Child table with FKs to the three parents
CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number BIGINT NOT NULL,
  invoice_date DATE NOT NULL,
  car_id INT NOT NULL,
  customer_id INT NOT NULL,
  salesperson_id INT NOT NULL,
  CONSTRAINT fk_invoices_car        FOREIGN KEY (car_id)        REFERENCES cars(id),
  CONSTRAINT fk_invoices_customer   FOREIGN KEY (customer_id)   REFERENCES customers(id),
  CONSTRAINT fk_invoices_salesperson FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
) ENGINE=InnoDB;
