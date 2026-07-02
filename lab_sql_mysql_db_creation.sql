-- Step 1: Drop the entire schema if it exists to start completely fresh
DROP SCHEMA IF EXISTS Mysql_db_creation;
CREATE SCHEMA Mysql_db_creation;
USE Mysql_db_creation;

-- Step 2: Create Tables with correct structures and names
CREATE TABLE cars (
    car_id INT AUTO_INCREMENT,
    car_vin VARCHAR(50) NOT NULL, -- No UNIQUE rule so the duplicate rows will pass!
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(50),
    PRIMARY KEY (car_id)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT,
    customer_id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(20),
    address VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT,
    staff_id VARCHAR(30),
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50),
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

-- Step 3: Populate All Data
INSERT INTO cars (car_id, car_vin, manufacturer, model, year, color)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6x', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (id, customer_id, name, phone, email, address, city, state, country, zip_code)
VALUES
(1, '10001', 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Castellana 20', 'Madrid', 'Madrid', 'Spain', '28046'),
(2, '20001', 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(3, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons (id, staff_id, name, store)
VALUES
(1, '00001', 'Petey Cruiser', 'Madrid'),
(2, '00002', 'Anna Sthesia', 'Barcelona'),
(3, '00003', 'Paul Molive', 'Berlin'),
(4, '00004', 'Gail Forcewind', 'Paris'),
(5, '00005', 'Paige Turner', 'Mimia'),
(6, '00006', 'Bob Frapples', 'Mexico City'),
(7, '00007', 'Walter Melon', 'Amsterdam'),
(8, '00008', 'Shonda Leer', 'São Paulo');

INSERT INTO invoices (id, invoice_number, date, car_id, customer_id, salesperson_id)
VALUES
(1, '852399038', '2018-08-22', 1, 1, 3),
(2, '731166526', '2018-12-31', 3, 3, 5),
(3, '271135104', '2019-01-22', 2, 2, 7);

USE Mysql_db_creation;

-- Disable safe update mode (if needed)
SET SQL_SAFE_UPDATES = 0;

-- Update customer emails
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

USE Mysql_db_creation;

-- Disable safe update mode (if needed)
SET SQL_SAFE_UPDATES = 0;

-- Delete duplicated car entry
DELETE FROM cars
WHERE car_id = 6;

