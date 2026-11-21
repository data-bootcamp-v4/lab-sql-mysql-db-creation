-- Archivo create.sql

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    color VARCHAR(30)
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(30),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(50)
);

CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);

-- Archivo seeding.sql

USE lab_mysql;

INSERT INTO cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customers (customer_id, name, phone, email, address, city, state_province, country, postal_code) VALUES
('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoleon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisee', 'Paris', 'Ile-de-France', 'France', '75008');

INSERT INTO salespersons (staff_id, name, store) VALUES
('00001', 'Petra Winsland', 'Madrid'),
('00002', 'Anna Lundberg', 'Barcelona'),
('00003', 'Mia Jensen', 'Paris');

INSERT INTO invoices (invoice_number, invoice_date, car_id, customer_id, salesperson_id) VALUES
('852399038', '2018-08-22', 1, 1, 1),
('731166526', '2018-12-31', 3, 2, 3),
('271135104', '2019-01-22', 2, 3, 2);

-- Ejercicio update.sql

USE lab_mysql;

UPDATE customers SET email = 'ppicasso@gmail.com' WHERE customer_id = '10001';
UPDATE customers SET email = 'lincoln@us.gov' WHERE customer_id = '20001';
UPDATE customers SET email = 'hello@napoleon.me' WHERE customer_id = '30001';

-- Ejercicio delete.sql

USE lab_mysql;

DELETE FROM invoices WHERE car_id = 5;
DELETE FROM cars WHERE id = 5;
