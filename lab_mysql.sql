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

-- Step 3: Seed the Database (Challenge 3)

USE lab_mysql;

-- Insert sample cars (adjust IDs to match auto-increment)
INSERT INTO cars (id, vin, manufacturer, model, year, color)
VALUES
  (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
  (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
  (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
  (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
  (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
  (6, 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');  -- Unique VIN ✅
  
-- Insert customers (fix ID 0 → 1)
INSERT INTO customers (id, cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
  (1, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
  (2, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
  (3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert salespersons (include ALL entries)
INSERT INTO salespersons (id, staff_id, name, store)
VALUES
  (1, '00001', 'Petey Cruiser', 'Madrid'),
  (2, '00002', 'Anna Sthesia', 'Barcelona'),
  (3, '00003', 'Paul Molive', 'Berlin'),
  (4, '00004', 'Gail Forcewind', 'Paris'),
  (5, '00005', 'Paige Turner', 'Miami'),
  (6, '00006', 'Bob Frapples', 'Mexico City'),
  (7, '00007', 'Walter Melon', 'Amsterdam'),  -- Now includes ID 7
  (8, '00008', 'Shonda Leer', 'São Paulo');

-- Insert invoices (reference VALID staff_id)
INSERT INTO invoices (id, invoice_number, date, car_id, cust_id, staff_id)
VALUES
  (1, '852399038', '2018-08-22', 1, 1, 3),
  (2, '731166526', '2018-12-31', 3, 3, 5),
  (3, '271135104', '2019-01-22', 2, 2, 7);  -- staff_id 7 now exists
  
  -- Step 4: Bonus Challenge (Update & Delete)
  
  USE lab_mysql;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Update customer emails
UPDATE customers
SET cust_email = CASE
  WHEN cust_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
  WHEN cust_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
  WHEN cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END
WHERE cust_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;

-- Delete Duplicate Car (delete.sql)

USE lab_mysql;

-- Delete car with ID 4 (assuming duplicate VIN error)
DELETE FROM cars
WHERE id = 4;

SHOW TABLES;