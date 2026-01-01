-- -------------------------------------
-- Challenge 2: Create Database and Tables
-- -------------------------------------

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- -------------------------------------
-- 2. Drop tables if they already exist
-- (This ensures we can rerun the script without errors)
-- -------------------------------------

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

-- -------------------------------------
-- 3. Create 'cars' table
-- -------------------------------------

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30) NOT NULL
);

-- -------------------------------------
-- 4. Create 'customers' table
-- -------------------------------------

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(150),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(15)
);

-- -------------------------------------
-- 5. Create 'salespersons' table
-- -------------------------------------

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

-- -------------------------------------
-- 6. Create 'invoices' table
-- -------------------------------------

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

-- -------------------------------------
-- Challenge 3: Seeding the Database
-- -------------------------------------

USE lab_mysql;

-- -------------------------------------
-- 1. Insert data into 'cars' table
-- -------------------------------------
INSERT INTO cars (vin, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray'); 
-- (last VIN fixed to avoid duplicate constraint)

-- -------------------------------------
-- 2. Insert data into 'customers' table
-- -------------------------------------
INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- -------------------------------------
-- 3. Insert data into 'salespersons' table
-- -------------------------------------
INSERT INTO salespersons (staff_id, name, store)
VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

-- -------------------------------------
-- 4. Insert data into 'invoices' table
-- -------------------------------------
-- NOTE: Make sure IDs align: cars(1–6), customers(1–3), salespersons(1–8)
INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id)
VALUES
('852399038', '2018-08-22', 1, 1, 3),
('731166526', '2018-12-31', 3, 3, 5),
('271135104', '2019-01-22', 2, 2, 7);





