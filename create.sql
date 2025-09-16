-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Drop and create the cars table
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(50),
  manufacturer VARCHAR(50),
  model VARCHAR(50),
  year INT,
  color VARCHAR(30)
);

-- Drop and create the customers table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  phone VARCHAR(30),
  email VARCHAR(100),
  address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  zipcode VARCHAR(20)
);

-- Drop and create the salespersons table
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  store VARCHAR(50)
);

-- Drop and create the invoices table with relationships
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number VARCHAR(20),
  invoice_date DATE,
  car_id INT,
  customer_id INT,
  staff_id INT,
  FOREIGN KEY (car_id) REFERENCES cars(id),
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (staff_id) REFERENCES salespersons(id)
);
