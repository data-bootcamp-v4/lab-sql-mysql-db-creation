CREATE DATABASE IF NOT EXISTS lab_car_dealership;
USE lab_car_dealership;

CREATE TABLE cars (
    carID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state_province VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_postal_code VARCHAR(20) NOT NULL
);

CREATE TABLE salespersons (
    staffID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);

CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    carID INT NOT NULL,
    customerID INT NOT NULL,
    salespersonID INT NOT NULL,
    FOREIGN KEY (carID) REFERENCES cars(carID),
    FOREIGN KEY (customerID) REFERENCES customers(customerID),
    FOREIGN KEY (salespersonID) REFERENCES salespersons(staffID)
);

USE lab_car_dealership;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    carID INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year YEAR NOT NULL,
    color VARCHAR(20) NOT NULL
);

CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state_province VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    zip_postal_code VARCHAR(20) NOT NULL
);

CREATE TABLE salespersons (
    staffID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL
);

CREATE TABLE invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    carID INT NOT NULL,
    customerID INT NOT NULL,
    salespersonID INT NOT NULL,
    FOREIGN KEY (carID) REFERENCES cars(carID),
    FOREIGN KEY (customerID) REFERENCES customers(customerID),
    FOREIGN KEY (salespersonID) REFERENCES salespersons(staffID)
);


USE lab_car_dealership;

INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('9F2I3J4K5L6M7N8O9', 'Volvo', 'V60 Cross Country', 2019, 'Gray');


INSERT INTO customers (name, phone_number, email, address, city, state_province, country, zip_postal_code)
VALUES
('Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');


INSERT INTO salespersons (name, store)
VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');


INSERT INTO invoices (date, carID, customerID, salespersonID)
VALUES
('2018-08-22', 1, 1, 3),
('2018-12-31', 3, 3, 5),
('2019-01-22', 2, 2, 7);



