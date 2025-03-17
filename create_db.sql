-- Step 1: Create the Database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- Step 2: Create Tables
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT UNIQUE NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(255) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(10) NOT NULL
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50) UNIQUE NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

-- Step 3: Insert Data
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO customers (cust_id, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state, cust_country, cust_zipcode) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (staff_id, name, store) VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Miami'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (invoice_number, date, car_id, customer_id, salesperson_id) VALUES
('852399038', '2018-08-22', 1, 1, 3),
('731166526', '2018-12-31', 3, 3, 5),
('271135104', '2019-01-22', 2, 2, 7);

-- Bonus Step: Update Customer Emails
UPDATE customers SET cust_email = 'ppicasso@gmail.com' WHERE cust_name = 'Pablo Picasso';
UPDATE customers SET cust_email = 'lincoln@us.gov' WHERE cust_name = 'Abraham Lincoln';
UPDATE customers SET cust_email = 'hello@napoleon.me' WHERE cust_name = 'Napoléon Bonaparte';

-- Bonus Step: Delete Duplicate Car Entry
DELETE FROM cars WHERE id = 4;
