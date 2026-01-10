CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(32) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(80) NOT NULL,
  year SMALLINT NOT NULL,
  color VARCHAR(30) NOT NULL,
  UNIQUE KEY uk_cars_vin (vin)
);

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT NOT NULL,
  cust_name VARCHAR(100) NOT NULL,
  cust_phone VARCHAR(40),
  cust_email VARCHAR(120),
  cust_address VARCHAR(120),
  cust_city VARCHAR(80),
  cust_state VARCHAR(80),
  cust_country VARCHAR(80),
  cust_zipcode VARCHAR(20),
  UNIQUE KEY uk_customers_cust_id (cust_id)
);

CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(10) NOT NULL,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(80) NOT NULL,
  UNIQUE KEY uk_salespersons_staff_id (staff_id)
);

CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number BIGINT NOT NULL,
  invoice_date DATE NOT NULL,
  car_id INT NOT NULL,
  customer_id INT NOT NULL,
  salesperson_id INT NOT NULL,
  UNIQUE KEY uk_invoices_invoice_number (invoice_number),
  CONSTRAINT fk_invoices_car FOREIGN KEY (car_id) REFERENCES cars(id),
  CONSTRAINT fk_invoices_customer FOREIGN KEY (customer_id) REFERENCES customers(id),
  CONSTRAINT fk_invoices_salesperson FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);
