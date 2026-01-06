-- 1) Create DATABASE
CREATE DATABASE IF NOT EXISTS lab_mysql_db_creation;
USE lab_mysql_db_creation;

-- 2) Drop tables 
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

-- 3) Create tables
CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(17) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(80) NOT NULL,
  year SMALLINT NOT NULL,
  color VARCHAR(30) NOT NULL
);

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT NOT NULL,
  cust_name VARCHAR(100) NOT NULL,
  cust_phone VARCHAR(30),
  cust_email VARCHAR(120),
  cust_address VARCHAR(120),
  cust_city VARCHAR(60),
  cust_state VARCHAR(60),
  cust_country VARCHAR(60),
  cust_zipcode VARCHAR(15)
);

CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(10) NOT NULL,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(60) NOT NULL
);

CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number VARCHAR(30) NOT NULL,
  invoice_date DATE NOT NULL,
  car_id INT NOT NULL,
  customer_id INT NOT NULL,
  salesperson_id INT NOT NULL,

  CONSTRAINT fk_invoices_car
    FOREIGN KEY (car_id) REFERENCES cars(id)
    ON UPDATE CASCADE ON DELETE RESTRICT,

  CONSTRAINT fk_invoices_customer
    FOREIGN KEY (customer_id) REFERENCES customers(id)
    ON UPDATE CASCADE ON DELETE RESTRICT,

  CONSTRAINT fk_invoices_salesperson
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
    ON UPDATE CASCADE ON DELETE RESTRICT
);
