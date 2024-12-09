-- Step 1: Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Step 2: Use the created database
USE lab_mysql;

-- Step 3: Drop tables if they exist (for testing purposes)
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Invoices;

-- Step 4: Create the Cars table
CREATE TABLE Cars (
  car_id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(17) UNIQUE NOT NULL,
  manufacturer VARCHAR(50),
  model VARCHAR(50),
  year YEAR,
  color VARCHAR(30)
);

-- Step 5: Create the Customers table
CREATE TABLE Customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  phone_number VARCHAR(20),
  email VARCHAR(100),
  address VARCHAR(255),
  city VARCHAR(100),
  state_province VARCHAR(100),
  country VARCHAR(100),
  zip_postal_code VARCHAR(20)
);

-- Step 6: Create the Salespersons table
CREATE TABLE Salespersons (
  staff_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  store VARCHAR(100)
);

-- Step 7: Create the Invoices table
CREATE TABLE Invoices (
  invoice_id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_date DATE,
  car_id INT,
  customer_id INT,
  staff_id INT,
  FOREIGN KEY (car_id) REFERENCES Cars(car_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id)
);
