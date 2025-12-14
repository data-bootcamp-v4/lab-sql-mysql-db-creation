-- create.sql

-- Temporarily disable Foreign Key checks to guarantee clean drop and recreate
SET FOREIGN_KEY_CHECKS = 0;

-- 1. Create the Database
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- 2. Use the Database (CRITICAL: Selects the active database)
USE lab_mysql;

-- 3. Drop Tables in DEPENDENCY ORDER (Child before Parent)
DROP TABLE IF EXISTS Invoices;      -- Invoices is the CHILD, must be dropped first
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;


-- 4. Create the Tables (DDL Statements)

-- Table: Cars (Parent)
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    `year` SMALLINT NOT NULL,
    color VARCHAR(30)
);

-- Table: Customers (Parent)
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_number INT NOT NULL UNIQUE,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(50),
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(50),
    cust_state_province VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

-- Table: Salespersons (Parent)
CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_number INT NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50) NOT NULL
);

-- Table: Invoices (Child - Contains Foreign Keys)
CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    `date` DATE NOT NULL,
    
    -- Foreign Keys
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    
    -- Constraints
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);

-- Re-enable Foreign Key checks
SET FOREIGN_KEY_CHECKS = 1;
-- seeding.sql

USE lab_mysql; -- Critical: Select the active database

-- 1. Insert data into Cars table (5 records)
-- Note: We omit the 6th record from the lab instructions to maintain the VIN's UNIQUE constraint.
INSERT INTO Cars (car_id, VIN, manufacturer, model, `year`, color) 
VALUES 
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

-- 2. Insert data into Customers table (3 records)
INSERT INTO Customers (customer_id, cust_number, cust_name, cust_phone, cust_email, cust_address, cust_city, cust_state_province, cust_country, cust_zipcode)
VALUES 
(1, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(2, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- 3. Insert data into Salespersons table (8 records)
INSERT INTO Salespersons (salesperson_id, staff_number, name, store)
VALUES 
(1, 00001, 'Petey Cruiser', 'Madrid'),
(2, 00002, 'Anna Sthesia', 'Barcelona'),
(3, 00003, 'Paul Molive', 'Berlin'),
(4, 00004, 'Gail Forcewind', 'Paris'),
(5, 00005, 'Paige Turner', 'Mimia'),
(6, 00006, 'Bob Frapples', 'Mexico City'),
(7, 00007, 'Walter Melon', 'Amsterdam'),
(8, 00008, 'Shonda Leer', 'São Paulo');

-- 4. Insert data into Invoices table (3 records)
-- Foreign Key IDs match the IDs from the tables above.
INSERT INTO Invoices (invoice_id, invoice_number, `date`, car_id, customer_id, salesperson_id)
VALUES 
(1, '852399038', '2018-08-22', 1, 1, 3), 
(2, '731166526', '2018-12-31', 3, 3, 5), 
(3, '271135104', '2019-01-22', 2, 2, 7);
-- update.sql

-- 1. CRITICAL: Select the database
USE lab_mysql;

-- 2. Disable safe update mode to allow UPDATE/DELETE without using a primary key in the WHERE clause
SET SQL_SAFE_UPDATES = 0; 

-- 3. Update Pablo Picasso's email (customer_id 1)
UPDATE Customers
SET cust_email = 'ppicasso@gmail.com'
WHERE cust_name = 'Pablo Picasso';

-- 4. Update Abraham Lincoln's email (customer_id 2)
UPDATE Customers
SET cust_email = 'lincoln@us.gov'
WHERE cust_name = 'Abraham Lincoln';

-- 5. Update Napoléon Bonaparte's email (customer_id 3)
UPDATE Customers
SET cust_email = 'hello@napoleon.me'
WHERE cust_name = 'Napoléon Bonaparte';

-- 6. Re-enable safe update mode (good practice)
SET SQL_SAFE_UPDATES = 1;
-- delete.sql

USE lab_mysql; 

-- Temporarily disable safe mode for DELETE operation
SET SQL_SAFE_UPDATES = 0; 

-- DELETE: Remove the car entry with car_id = 4.
-- Car ID 4 is the 'Toyota RAV4' based on your seeding script.
DELETE FROM Cars
WHERE car_id = 4;

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1; 
SELECT * FROM Cars;
