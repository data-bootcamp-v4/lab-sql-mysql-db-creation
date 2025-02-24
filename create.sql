-- Drop and recreate the database
DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- Drop existing tables (if any)
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- Create cars table
CREATE TABLE cars (
  id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(17) UNIQUE NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  year YEAR NOT NULL,
  color VARCHAR(20)
);

-- Create customers table
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT UNIQUE,
  cust_name VARCHAR(100) NOT NULL,
  cust_phone VARCHAR(20),
  cust_email VARCHAR(100),
  cust_address VARCHAR(100),
  cust_city VARCHAR(50),
  cust_state VARCHAR(50),
  cust_country VARCHAR(50),
  cust_zipcode VARCHAR(10)
);

-- Create salespersons table
CREATE TABLE salespersons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  staff_id VARCHAR(10) UNIQUE,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(50) NOT NULL
);

-- Create invoices table (last, due to foreign keys)
CREATE TABLE invoices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_number VARCHAR(20) UNIQUE NOT NULL,
  date DATE NOT NULL,
  car_id INT,
  cust_id INT,
  staff_id INT,
  FOREIGN KEY (car_id) REFERENCES cars(id),
  FOREIGN KEY (cust_id) REFERENCES customers(id),
  FOREIGN KEY (staff_id) REFERENCES salespersons(id)
);

