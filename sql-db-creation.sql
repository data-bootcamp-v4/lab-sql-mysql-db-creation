-- Create the database
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

-- TABLE 1: Cars

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(30)
);

-- TABLE 2: Customers

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20)
);

-- TABLE 3: Salespersons

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100)
);

-- TABLE 4: Invoices

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

USE lab_mysql;

-- SEEDING: Cars

INSERT INTO cars (id, vin, manufacturer, model, year, color)
VALUES
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray'); 
-- VIN modified to avoid duplicate UNIQUE violation

-- SEEDING: Customers

INSERT INTO customers (id, customer_id, name, phone, email, address, city, state, country, postal_code)
VALUES
(1, '10001', 'Pablo Picasso', '+34 636 17 63 82', NULL,
 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),

(2, '20001', 'Abraham Lincoln', '+1 305 907 7086', NULL,
 '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),

(3, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL,
 '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- SEEDING: Salespersons

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

-- SEEDING: Invoices

INSERT INTO invoices (id, invoice_number, date, car_id, customer_id, salesperson_id)
VALUES
(1, '852399038', '2018-08-22', 1, 1, 3),
(2, '731166526', '2018-12-31', 3, 3, 5),
(3, '271135104', '2019-01-22', 2, 2, 7);

USE lab_mysql;

-- Disable safe update mode (in case it's turned on)

SET SQL_SAFE_UPDATES = 0;

-- UPDATE email addresses for the three customers

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name = 'Abraham Lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name = 'Napoléon Bonaparte';

USE lab_mysql;


-- DELETE the car with ID = 4

DELETE FROM cars
WHERE id = 4;